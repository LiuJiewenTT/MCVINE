@echo off
set a=%1\mods\wat
set b=%~dp0pkgs

echo Lost! Working to repair...
:rp
rem 检查目标目录是否存在
if exist %1\mods (
rem 复制对象
xcopy /Y /F /I /E %b% %1
echo nul>%a%
) else (
goto rp
)
goto :eof