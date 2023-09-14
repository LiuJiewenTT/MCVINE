@echo off
set /a time_exit=5
choice /T %time_exit% /C we /D e /M "Be about to quit. %time_exit% sec count-down: W for Wait and Retry, E for Exit"
echo %errorlevel%