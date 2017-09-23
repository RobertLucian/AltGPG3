#!/bin/bash

# unzip the compiled OpenOCD
unzip /home/pi/Dexter/GoPiGo3/Firmware/openocd/openocd_compiled.zip -d /home/pi/Dexter/GoPiGo3/Firmware/openocd

# Put the configuration files into /usr/local/share
sudo cp -rn /home/pi/Dexter/GoPiGo3/Firmware/openocd/openocd_compiled/files/openocd /usr/local/share

# Put the openocd binary into /usr/bin
sudo cp -rn /home/pi/Dexter/GoPiGo3/Firmware/openocd/openocd_compiled/openocd /usr/bin

# Make the openocd binary executable
sudo chmod +x /usr/bin/openocd

# Remove the unzipped files
rm -rf /home/pi/Dexter/GoPiGo3/Firmware/openocd/openocd_compiled
