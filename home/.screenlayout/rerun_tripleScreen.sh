#!/bin/sh
xrandr --output DVI-D-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1-3-2 --off --output DP-1-3-1 --off
sleep 3
xrandr --output eDP-1-1 --mode 2560x1440 --pos 5120x0 --rotate normal --output DP-1-1 --off --output HDMI-1-1 --off --output DP-1-2 --off --output HDMI-1-2 --off --output DP-1-3 --off --output HDMI-1-3 --off --output DP-1-3-1 --mode 2560x1440 --pos 0x0 --rotate normal --output DP-1-3-2 --mode 2560x1440 --pos 2560x0 --rotate normal --output DP-1-3-3 --off

