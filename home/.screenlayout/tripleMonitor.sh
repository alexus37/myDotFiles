#!/bin/sh

curHostname=$(hostname)
if [ "$curHostname" = "hal" ]; 
then
    xrandr --output DVI-D-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1 --off --output HDMI-0 --off --output DP-3 --off --output DP-2 --mode 1920x1200 --pos 1920x0 --rotate normal --output DP-1 --off --output DP-0 --mode 1920x1200 --pos 3840x0 --rotate normal    
fi

if [ "$curHostname" = "cgl-desktop-07.ethz.ch" ]; 
then
    xrandr --output HDMI-0 --mode 1920x1200 --pos 3840x0 --rotate normal --output HDMI-1 --off --output DP-0 --mode 1920x1200 --pos 1920x0 --rotate normal --output DP-1 --off --output DP-2 --off --output DP-3 --off --output HDMI-1-1 --off --output HDMI-1-2 --primary --mode 1920x1200 --pos 0x0 --rotate normal --output DP-1-1 --off
fi