/* rgb-led-bricklet
 * Copyright (C) 2015 Olaf Lüke <olaf@tinkerforge.com>
 *
 * rgb-led.c: Implementation of RGB LED Bricklet messages
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

#include "rgb-led.h"

#include "bricklib/bricklet/bricklet_communication.h"
#include "bricklib/utility/util_definitions.h"
#include "bricklib/drivers/adc/adc.h"
#include "brickletlib/bricklet_entry.h"
#include "brickletlib/bricklet_simple.h"
#include "config.h"

#define NOP10() do{ __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); }while(0)
#define NOP9()  do{ __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); }while(0)
#define NOP8()  do{ __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); }while(0)
#define NOP7()  do{ __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); }while(0)
#define NOP6()  do{ __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); }while(0)
#define NOP5()  do{ __NOP(); __NOP(); __NOP(); __NOP(); __NOP(); }while(0)
#define NOP4()  do{ __NOP(); __NOP(); __NOP(); __NOP(); }while(0)
#define NOP3()  do{ __NOP(); __NOP(); __NOP(); }while(0)
#define NOP2()  do{ __NOP(); __NOP(); }while(0)
#define NOP1()  do{ __NOP(); }while(0)

// "PUSH {R0}\n" -> 2 cycles
// "MOV R0, %0\n" -> 1 cycles
// "SUBS R0, #1\n" -> 1 cycles
// "BNE.N 1b\n" -> 2 cycles if taken, 1 otherwise
// "POP {R0}\n" -> 2 cycles
#define SLEEP_THREE_CYCLES(x) \
	do { \
		__ASM volatile ( \
			"PUSH {R0}\n" \
			"MOV R0, %0\n" \
			"1:\n" \
			"SUBS R0, #1\n" \
			"BNE.N 1b\n" \
			"POP {R0}\n" \
			:: "r" (x) \
		); \
	} while(0)


/*   --- Cycle number is calculated with the following Python script ---
 *       !!! This is currently not used anymore !!!
CYCLE_NS = 15.63
CYCLE_HEAD = 3
CYCLE_LOOP = 3
CYCLE_LOOP_END = 2
CYCLE_TAIL = 2
CYCLE_IF = 3

def ns_to_cycle(n):
    cycles = n/15.63
    loop = cycles/3.0
    value = loop - (CYCLE_HEAD + CYCLE_TAIL + CYCLE_IF - (CYCLE_LOOP - CYCLE_LOOP_END))/3.0
    print n, value

ns_to_cycle(350)
ns_to_cycle(500)
ns_to_cycle(600)
ns_to_cycle(700)
ns_to_cycle(800)
ns_to_cycle(900)
ns_to_cycle(1200)
ns_to_cycle(1300)
ns_to_cycle(2000)
  ------------------------------------------------------------------------  */

// We sleep about 250us low phase and 1250us high phase (found by trial and error)
// This fits nearly exactly in the middle of the margins found by
// Tim: http://cpldcpu.wordpress.com/2014/01/14/light_ws2812-library-v2-0-part-i-understanding-the-ws2812/
// It does not correspond to the datasheet!
void bb_write_3byte_ws2812(const uint32_t value) {
	for(int8_t i = 23; i >= 0; i--) {
		if((value >> i) & 1) {
			PIN_SPI_SDI.pio->PIO_CODR = PIN_SPI_SDI.mask;
			SLEEP_THREE_CYCLES(23);
			PIN_SPI_SDI.pio->PIO_SODR = PIN_SPI_SDI.mask;
		} else {
			PIN_SPI_SDI.pio->PIO_CODR = PIN_SPI_SDI.mask;
			SLEEP_THREE_CYCLES(3);
			PIN_SPI_SDI.pio->PIO_SODR = PIN_SPI_SDI.mask;
			SLEEP_THREE_CYCLES(17);
		}
	}
}

void set_rgb_value(const ComType com, const SetRGBValue *data) {
	BA->com_return_setter(com, data);
	BC->r = data->r;
	BC->g = data->g;
	BC->b = data->b;
}

void get_rgb_value(const ComType com, const GetRGBValue *data) {
	GetRGBValueReturn grgbvr;
	grgbvr.header        = data->header;
	grgbvr.header.length = sizeof(GetRGBValueReturn);
	grgbvr.r             = BC->r;
	grgbvr.g             = BC->g;
	grgbvr.b             = BC->b;

	BA->send_blocking_with_timeout(&grgbvr, sizeof(GetRGBValueReturn), com);
}

void invocation(const ComType com, const uint8_t *data) {
	switch(((MessageHeader*)data)->fid) {
		case FID_SET_RGB_VALUE: {
			set_rgb_value(com, (SetRGBValue*)data);
			return;
		}

		case FID_GET_RGB_VALUE: {
			get_rgb_value(com, (GetRGBValue*)data);
			return;
		}

		default: {
			BA->com_return_error(data, sizeof(MessageHeader), MESSAGE_ERROR_CODE_NOT_SUPPORTED, com);
			break;
		}
	}
}

void constructor(void) {
	_Static_assert(sizeof(BrickContext) <= BRICKLET_CONTEXT_MAX_SIZE, "BrickContext too big");
	PIN_SPI_SDI.type = PIO_OUTPUT_1;
	PIN_SPI_SDI.attribute = PIO_DEFAULT;
	BA->PIO_Configure(&PIN_SPI_SDI, 1);

	BC->r = 0;
	BC->g = 0;
	BC->b = 0;
	BC->counter = 33;
}

void tick(const uint8_t tick_type) {
	if(tick_type & TICK_TASK_TYPE_CALCULATION) {
		BC->counter++;
		if(BC->counter >= 33) { // aprox 30 fps
			BC->counter = 0;
			__disable_irq();
			bb_write_3byte_ws2812((BC->g << 16) | (BC->r << 8) | BC->b);
			__enable_irq();
		}
	}
}
