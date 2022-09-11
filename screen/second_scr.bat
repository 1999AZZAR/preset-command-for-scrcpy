@echo off

cd
cd ..
cd data

adb shell settings put global overlay_display_devices 1920x1080/200

FOR /F "tokens=* USEBACKQ" %%F IN (`scrcpy --display=1`) DO (
SET var=%%F
)

set str=%var:~-2%

scrcpy --display=%str% -b14M -Sw -t --window-title pixel

adb shell settings put global overlay_display_devices none
