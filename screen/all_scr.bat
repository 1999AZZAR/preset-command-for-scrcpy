@echo off
start "" screen.vbs
ping 127.0.0.1 -n 3 > nul
start "" second_screen.vbs