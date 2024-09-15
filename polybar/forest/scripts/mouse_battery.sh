#!/bin/bash

get_mouse_battery() {
    battery_status=$(upower -i /org/freedesktop/UPower/devices/mouse_hidpp_battery_0 | grep -E "percentage" | awk '{print $2}')

    if [ -n "$battery_status" ]; then
        echo "$battery_status"
    else
        echo "Não disponível"
    fi
}

echo "$(get_mouse_battery)"
