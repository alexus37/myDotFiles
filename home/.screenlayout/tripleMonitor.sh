#!/bin/sh

curHostname=$(hostname)
echo "Run triple Screen on $curHostname"
if [ "$curHostname" = "hal4" ];
then
echo "Setting out screen conv on hal 4"
    xrandr --output eDP-1-1 --mode 2560x1440 --pos 5120x0 --rotate normal --output DP-1-1 --off --output HDMI-1-1 --off --output DP-1-2 --off --output HDMI-1-2 --off --output DP-1-3 --off --output HDMI-1-3 --off --output DP-1-3-1 --mode 2560x1440 --pos 0x0 --rotate normal --output DP-1-3-2 --mode 2560x1440 --pos 2560x0 --rotate normal --output DP-1-3-3 --off
fi

if [ "$curHostname" = "cgl-desktop-07.ethz.ch" ];
then
    echo "cgl"
    xrandr --output HDMI-0 --mode 1920x1200 --pos 3840x0 --rotate normal --output HDMI-1 --off --output DP-0 --mode 1920x1200 --pos 1920x0 --rotate normal --output DP-1 --off --output DP-2 --off --output DP-3 --off --output HDMI-1-1 --off --output HDMI-1-2 --primary --mode 1920x1200 --pos 0x0 --rotate normal --output DP-1-1 --off
fi
