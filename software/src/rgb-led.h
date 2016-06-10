/* rgb-led-bricklet
 * Copyright (C) 2015 Olaf Lüke <olaf@tinkerforge.com>
 *
 * rgb-led.h: Implementation of RGB LED Bricklet messages
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

#ifndef RGB_LED_H
#define RGB_LED_H

#include <stdint.h>
#include "bricklib/com/com_common.h"

#define I2C_EEPROM_ADDRESS_HIGH 84

#define FID_SET_RGB_VALUE      1
#define FID_GET_RGB_VALUE      2

typedef struct {
	MessageHeader header;
	uint8_t r;
	uint8_t g;
	uint8_t b;
} __attribute__((__packed__)) SetRGBValue;

typedef struct {
	MessageHeader header;
} __attribute__((__packed__)) GetRGBValue;

typedef struct {
	MessageHeader header;
	uint8_t r;
	uint8_t g;
	uint8_t b;
} __attribute__((__packed__)) GetRGBValueReturn;

void set_rgb_value(const ComType com, const SetRGBValue *data);
void get_rgb_value(const ComType com, const GetRGBValue *data);

void invocation(const ComType com, const uint8_t *data);
void constructor(void);
void destructor(void);
void tick(const uint8_t tick_type);

#endif
