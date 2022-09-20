#!/bin/bash

# get device by 'light -L'
led_device=sysfs/leds/input4::capslock
# led_device=sysfs/leds/phy0-led

interface=org.freedesktop.Notifications
member=Notify

blink_light() {
    iter=0
    while (($iter < $1)); do
        light -s $led_device -S 100
        sleep $2
        light -s $led_device -S 0
        sleep $2
        iter=$((iter+1))
    done
}

dbus-monitor --profile "type='method_call',interface='$interface',member='$member'" |
while read -r line; do
    blink_light 5 "0.4s"
done
