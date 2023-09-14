@echo off
setlocal enabledelayedexpansion
::名称自带引号吧，这样免得有的程序带空格了
set imgname="notepad.exe"

set /a flag_find=0
echo !flag_find!
for /f "delims=" %%i in ('tasklist ^| find /i %imgname%') do set /a flag_find=1
echo !flag_find!
