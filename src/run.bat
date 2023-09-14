@echo off
setlocal enabledelayedexpansion
echo %0
echo %1
set a=%1\mods\wat
set b=%~dp0pkgs
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

:loop2
set /a cnt=!cnt!+1
echo !cnt!
if exist %a% (
echo exist - !cnt!>ck1.txt
) else (
call rp.bat %1
)
if !cnt! LSS 1000 (
goto loop2
) else (
echo End Check
)
goto :eof

echo "end"

