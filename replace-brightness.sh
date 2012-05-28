#!/bin/sh
# This document is prepared by rasih in 07.04.2012 07:22:49 EEST.

echo "starting..."
head /$HOME/.brightness_backup | sudo tee /sys/class/backlight/acpi_video0/brightness
if [ $? -eq 0 ]
then
	echo "Well Done!"
	exit 0
else
	echo "Brightness couldn't set to previous value" > /$HOME/Desktop/Warning
	exit 127
fi
echo "THE END"
exit 0
