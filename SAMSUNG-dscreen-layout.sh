#!/bin/sh
# Date: 28.05.2012
# Author: sadican
# Content: Xubuntu 12.04 double screen script for SAMSUNG monitor

xrandr --output HDMI1 --off --output LVDS1 --mode 1366x768 --pos 0x900 --rotate normal --output DP1 --off --output VGA1 --mode 1440x900 --pos 0x0 --rotate normal
