REM   Here is code of MCVINE. Copyright 2022 LiuJiewenTT
REM   This file is generated from mcmod. Here is info about mcmod
REM   Copyright 2022 LiuJiewenTT
REM   You can find source code here: https://github.com/LiuJiewenTT/mcmod

REM   Licensed under the Apache License, Version 2.0 (the "License");
REM   you may not use this file except in compliance with the License.
REM   You may obtain a copy of the License at

REM       http://www.apache.org/licenses/LICENSE-2.0

REM   Unless required by applicable law or agreed to in writing, software
REM   distributed under the License is distributed on an "AS IS" BASIS,
REM   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
REM   See the License for the specific language governing permissions and
REM   limitations under the License.



@echo off
echo Welcome, my friend! This is MCVINE from mcmod.
echo Version: 1.7 (From now on, addons are supported!)
setlocal enabledelayedexpansion
echo ______________________________________________
echo %0
echo %1
set a=%~f1\mods\wat.jar
set b=%~dp0pkgs
echo %a%
echo %b%
echo nul>"%a%"
echo Please check if this is where you expected.(string before"\wat")
setlocal enabledelayedexpansion
pause

start run_addons.bat

REM 检查是否被更新
if exist "%a%" ( echo Exist! Waiting for the trigger... )

call "%~dp0ck.bat" "%1">log.txt
REM display words
call :print_words

set /a cnt=0
:loop
set /a cnt=!cnt!+1
echo !cnt!
call "%~dp0ck.bat" "%1">>log.txt
REM display words
call :print_words

goto loop

echo "end"
:eof

:print_words
setlocal disabledelayedexpansion
for /f "delims=" %%i in (%~dp0backworks_string.txt) do (
echo %%i
)
setlocal enabledelayedexpansion
:eof

REM all copies are at: 2022/5/26 5:01