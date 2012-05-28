#!/bin/sh
# Date: 28.05.2012
# Author: sadican
# Content: Xubuntu 12.04 double screen script for NEC monitor

xrandr --output HDMI1 --off --output LVDS1 --mode 1366x768 --pos 1280x0 --rotate normal --output DP1 --off --output VGA1 --mode 1280x1024 --pos 0x0 --rotate normal
