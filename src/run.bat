rem   Here is code of MCVINE. Copyright 2022 LiuJiewenTT
rem   This file is generated from mcmod. Here is info about mcmod
rem   Copyright 2022 LiuJiewenTT
rem   You can find source code here: https://github.com/LiuJiewenTT/mcmod

rem   Licensed under the Apache License, Version 2.0 (the "License");
rem   you may not use this file except in compliance with the License.
rem   You may obtain a copy of the License at

rem       http://www.apache.org/licenses/LICENSE-2.0

rem   Unless required by applicable law or agreed to in writing, software
rem   distributed under the License is distributed on an "AS IS" BASIS,
rem   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
rem   See the License for the specific language governing permissions and
rem   limitations under the License.



@echo off
setlocal enabledelayedexpansion
echo Welcome, my friend! This is MCVINE from mcmod.
echo Version: 1.5
echo ______________________________________________
echo %0
echo %1
set a=%~f1\mods\wat
set b=%~dp0pkgs
echo %a%
echo %b%
echo nul>"%a%"
echo Please check if this is where you expected.(string before"\wat")
pause


rem 检查是否被更新
if exist "%a%" ( echo Exist! Waiting for the trigger... )

call "%~dp0ck.bat" "%1"

echo Process Finished!...(You may close this if you enter the game already.)
echo (If game brokedown or whatever reason you are out of the game, just restart your game and this program is always ready for you! :)
echo Keep Assuring...

set /a cnt=0
:loop
set /a cnt=!cnt!+1
echo !cnt!
call "%~dp0ck.bat" "%1"
goto loop

echo "end"

rem all copies are at: 2022/5/24 3:46