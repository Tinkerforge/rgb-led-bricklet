#!/bin/sh
# Connects to localhost:4223 by default, use --host and --port to change this

uid=XYZ # Change to your UID

# Set light blue color
tinkerforge call rgb-led-bricklet $uid set-rgb-value 0 170 234
