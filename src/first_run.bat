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

ck.bat %1


