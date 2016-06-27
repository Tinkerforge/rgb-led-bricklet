<?php

require_once('Tinkerforge/IPConnection.php');
require_once('Tinkerforge/BrickletRGBLED.php');

use Tinkerforge\IPConnection;
use Tinkerforge\BrickletRGBLED;

const HOST = 'localhost';
const PORT = 4223;
const UID = 'XYZ'; // Change to your UID

$ipcon = new IPConnection(); // Create IP connection
$rl = new BrickletRGBLED(UID, $ipcon); // Create device object

$ipcon->connect(HOST, PORT); // Connect to brickd
// Don't use device before ipcon is connected

// Set light blue color
$rl->setRGBValue(0, 170, 234);

echo "Press key to exit\n";
fgetc(fopen('php://stdin', 'r'));
$ipcon->disconnect();

?>
