@echo off
echo %0
set a=D:\MCLDownload\Game\.minecraft
mkdir %a%\schematics

echo Saving WorldEdit's schems...
xcopy /Y /F /I /E %a%\config\worldedit\schematics %a%\schematics