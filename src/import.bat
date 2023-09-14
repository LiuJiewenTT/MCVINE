@echo off
echo %0
set a=D:\MCLDownload\Game\.minecraft

echo Importing file packs from pkgs...
echo ..

echo copy shaderpacks
xcopy /Y /F /I /E pkgs\pkg_exported\shaderpacks %a%\shaderpacks

echo copy Configurations...
echo copy config\voxelmap.properties
xcopy /Y /F /I /E pkgs\pkg_exported\config\voxelmap.* %a%\config\voxelmap.* 

REM NOT RUNNING: voxelmap violent insertion.
REM Running principles don't fit. Use Addon 'voxelmap_support' for common usage.
REM If you just want to put these in, UNCOMMENT THE NEXT TWO LINES
REM echo copy voxelmap
REM xcopy /Y /F /I /E pkgs\pkg_exported\voxelmap %a%\voxelmap

REM IF you have the addon, UNCOMMENT the next line.
REM start addons\voxelmap_support\run.bat

