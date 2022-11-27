#!/bin/sh
while :
do
    echo Waiting for Android USB device
    adb wait-for-usb-device reverse tcp:8081 tcp:8081
    echo Connection established
    scrcpy -m1920 -b14M -Sw -t --window-title pixel --power-off-on-close -K
    adb wait-for-usb-disconnect
    echo Disconnected
done
