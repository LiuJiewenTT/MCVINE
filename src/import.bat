@echo off
echo %0
set a=D:\MCLDownload\Game\.minecraft
echo Importing file packs from pkgs...
echo ..
echo copy shaderpacks
xcopy /Y /F /I /E pkgs\shaderpacks %a%\shaderpacks
echo copy voxelmap
xcopy /Y /F /I /E pkgs\voxelmap %a%\voxelmap

echo copy Configurations...
echo copy config\voxelmap.properties
xcopy /Y /F /I /E pkgs\config\voxelmap.* %a%\config\voxelmap.* 