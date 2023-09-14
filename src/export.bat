@echo off
echo %0
set a=D:\MCLDownload\Game\.minecraft
mkdir pkgs
echo Exporting file packs from %a%...
echo ..
echo copy shaderpacks
xcopy /Y /F /I /E %a%\shaderpacks pkgs\shaderpacks
echo copy voxelmap
xcopy /Y /F /I /E %a%\voxelmap pkgs\voxelmap

echo copy Configurations...
echo copy config\voxelmap.properties
xcopy /Y /F /I /E %a%\config\voxelmap.* pkgs\config\voxelmap.*

export_weSchem.bat