#!/bin/sh

if[ "$(xrandr | grep -c 'DP-1-3-1 connected')" -ge -0]; then
xrandr --output HDMI-1-3 --off --output HDMI-1-2 --off --output HDMI-1-1 --off --output DP-1-3-1 --mode 3840x1080 --pos 2560x0 --rotate normal --output eDP-1-1 --mode 2560x1440 --pos 0x0 --rotate normal --output DP-1-3-2 --off --output DP-1-3-3 --off --output DP-1-3 --off --output DP-1-2 --off --output DP-1-1 --off

fi
