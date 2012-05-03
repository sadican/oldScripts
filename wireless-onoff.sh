#!/bin/sh
# _ubuntu wireless card on-off script

hard=$(rfkill list wlan | grep -c "Hard blocked: yes")
soft=$(rfkill list wlan | grep -c "Soft blocked: yes")

if [ $hard -eq 1 ]
	then
	notify-send -t 3000 "Wlan is blocked hard! Switch card on!"
	echo "Wlan is blocked hard! Switch card on!"
	exit

elif [ $soft -eq 1 ]
	then
	notify-send -t 3000 "Wlan is blocked soft! It will be opened soon..."
	echo "Wlan is blocked soft! It will be opened soon..."
	rfkill unblock wlan
	notify-send -t 3000 "Wlan is unblocked!"
	echo "Wlan is unblocked!"
	exit 0
else
	notify-send -t 3000 "Wlan is unblocked already!"
	echo "Wlan is unblocked already!"
	exit 0
fi
