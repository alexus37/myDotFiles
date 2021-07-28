#!/bin/bash
screens=($(xrandr -q | grep " connected" | awk '{print $1}'))
tabletId=$(xinput | grep "HID 256c:006e Pen Pen" |  awk -F"id=" '{print $2}' | awk '{print $1}')

if (( $1 < ${#screens[@]} )); then
    echo "xinput map-to-output $tabletId ${screens[$1]}"
    xinput map-to-output $tabletId ${screens[$1]}
fi

