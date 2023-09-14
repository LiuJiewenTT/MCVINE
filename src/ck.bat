rem   Here is code of MCVINE. Copyright 2022 LiuJiewenTT
rem   The version of MCVINE should be 1.5+
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
rem set a=%~f1\mods\wat
rem set b=%~dp0pkgs

:loop
if exist "%a%" (
echo exist>"%~dp0ck1.txt"
goto loop
) else (
echo Lost! Working to repair...
:ck
rem 检查目标目录是否存在
echo "%~f1\mods"
if exist "%~f1\mods" (
rem 复制对象
rem raise the flag to make sure everything is there and not suffered from interuption.
echo nul>"%a%"
for /f "delims=" %%i in ('dir /b "%b%"') do (
xcopy /Y /F /I /S "%b%\%%i" "%~f1"
)
) else (
goto ck
)
)
goto :eof

rem all copies are at: 2022/5/24 4:19