@echo off
echo %0
set a=D:\MCLDownload\Game\.minecraft
mkdir %a%\config\worldedit\schematics

echo Loading WorldEdit's schems...
xcopy /Y /F /I /E %a%\schematics %a%\config\worldedit\schematics