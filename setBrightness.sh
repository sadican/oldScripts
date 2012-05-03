#!/bin/sh
# This document is prepared by rasih in 07.04.2012 07:22:49 EEST.

echo "starting..."
echo "Please enter a value between 0 and 15"
read temp_brightness
max_brightness=16

if [ $temp_brightness -eq $temp_brightness 2> /dev/null ]
then
	temp_brightness=$((temp_brightness % max_brightness))
	cp /sys/class/backlight/acpi_video0/brightness /$HOME/.brightness_backup_old
	echo $temp_brightness | sudo tee /sys/class/backlight/acpi_video0/brightness
	if [ $? -eq 0 ]
	then
		cp /sys/class/backlight/acpi_video0/brightness /$HOME/.brightness_backup
		echo "Well Done!"
		exit 0
	else
		echo "Brightness couldn't set to $temp_brightness"
		exit 127
	fi
else
	echo "Given value is not an integer!"
	exit
fi

echo "THE END"
exit 0
