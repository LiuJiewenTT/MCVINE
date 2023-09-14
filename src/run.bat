@echo off
setlocal enabledelayedexpansion
echo MCVINE v1.3 @ TTPeter
echo %0
echo %1
set a=%1\mods\wat
set b=%~dp0pkgs
::名称自带引号吧，这样免得有的程序带空格了
set imgname="javaw.exe"
set /a time_exit=300
echo %a%
echo %b%
echo nul>%a%
echo Please check if this is where you expected.(string before"\wat")
pause


rem 检查是否被更新
if exist %a% ( echo Exist! Waiting for the trigger... )

:loop
if exist %a% (
echo exist>ck1.txt
goto loop
) else (
call rp.bat %1
)

echo Assuring...

set /a cnt=0
set /a laps=0

:loop2
set /a cnt=!cnt!+1
if exist %a% (
echo exist - Laps: !laps!, Count: !cnt!>ck1.txt
) else (
call rp.bat %1
set /a cnt=0
set /a laps=!laps!+1
)
set /a flag_find=0
for /f "delims=" %%i in ('tasklist /nh /fi "IMAGENAME eq %imgname%" ^| find /i %imgname%') do set /a flag_find=1
if !flag_find! == 1 (
echo End Check. (%imgname% is found. The game should have been launched."
choice /T %time_exit% /C we /D e /M "Be about to quit. %time_exit% sec count-down: W for Wait and Retry, E for Exit"
if !errorlevel!==1 (
echo nul>%a%
goto loop
) else (
echo Quit.
)
) else (
goto loop2
)



