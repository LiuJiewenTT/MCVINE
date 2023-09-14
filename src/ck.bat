@echo off
set a=%1\mods\wat
set b=%~dp0pkgs

:loop
if exist %a% (
echo exist>ck1.txt
goto loop
) else (
echo Lost! Working to repair...
:ck
rem 检查目标目录是否存在
if exist %1\mods (
rem 复制对象
xcopy /Y /F /I /S %b% %1
echo nul>%a%
) else (
goto ck
)
)
goto :eof