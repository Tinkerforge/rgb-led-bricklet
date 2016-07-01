function octave_example_simple()
    more off;

    HOST = "localhost";
    PORT = 4223;
    UID = "XYZ"; % Change XYZ to the UID of your RGB LED Bricklet

    ipcon = java_new("com.tinkerforge.IPConnection"); % Create IP connection
    rl = java_new("com.tinkerforge.BrickletRGBLED", UID, ipcon); % Create device object

    ipcon.connect(HOST, PORT); % Connect to brickd
    % Don't use device before ipcon is connected

    % Set light blue color
    rl.setRGBValue(0, 170, 234);

    input("Press key to exit\n", "s");
    ipcon.disconnect();
end
