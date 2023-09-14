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
cd /d %~dp0

REM There might be different modes of addons.


REM For Addons running the whole time.


REM Use This to start all addons.
for /f "delims=" %%i in ('dir /b addons') do ( start addons\%%i\run.bat )


:eof

REM all copies are at: 2022/5/26 5:02