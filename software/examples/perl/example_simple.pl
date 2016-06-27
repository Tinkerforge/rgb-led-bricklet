#!/usr/bin/perl

use Tinkerforge::IPConnection;
use Tinkerforge::BrickletRGBLED;

use constant HOST => 'localhost';
use constant PORT => 4223;
use constant UID => 'XYZ'; # Change to your UID

my $ipcon = Tinkerforge::IPConnection->new(); # Create IP connection
my $rl = Tinkerforge::BrickletRGBLED->new(&UID, $ipcon); # Create device object

$ipcon->connect(&HOST, &PORT); # Connect to brickd
# Don't use device before ipcon is connected

# Set light blue color
$rl->set_rgb_value(0, 170, 234);

print "Press key to exit\n";
<STDIN>;
$ipcon->disconnect();
