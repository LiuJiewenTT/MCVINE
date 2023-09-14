@echo off
setlocal enabledelayedexpansion
set path=D:\MCLDownload\Game\.minecraft\
set p2=saves\LanGame-e8bcff13-ac0f-463e-a5ad-57bb493e6234\
echo nul>%path%mods\wat
set /a cnt=0
:loop
if not exist %path%mods\wat (
set /a cnt=!cnt!+1
echo No.!cnt!
echo wat has disappeared.
for /f "delims=" %%i in ('time /T') do (
set "stamp=%%i"
dir %path%%p2% /T:%%i
pause
goto :eof
)
) else (
goto loop
)
