@echo off
echo Running MCVINE Addon: voxelmap support

setlocal enabledelayedexpansion
set original_cd=%cd%
cd /d %~dp0..\..

REM set dest_path=D:\MCLDownload\Game\.minecraft\voxelmap
set dest_path=%~dp0exp_dir\voxelmap
echo dest_path:%dest_path%

REM Preset 2 kinds of pkgs' path for you
set pkgs_path=%cd%\pkgs
echo The path of pkgs: %pkgs_path%


REM Deprecated design
REM Set this_map
REM set this_map=%~dp0map

mkdir "%dest_path%\cache"

dir /b "%dest_path%\cache">"%~dp0list1.txt"
:loop1
dir /b "%dest_path%\cache">"%~dp0list2.txt"
fc "%~dp0list1.txt" "%~dp0list2.txt">"%~dp0diff.txt"

if ERRORLEVEL 1 (
echo 1
REM The new folder appeared! Start Working!

REM Set new
for /f "eol=* skip=1 delims=" %%i in (%~dp0diff.txt) do set new=%%i
echo Room ID:!new!

REM List pkgs, search for voxelmap\cache\ and copy.
REM please make sure there's only one cache in all those packages.
for /f "delims=" %%i in ('dir /b "%pkgs_path%" ') do (
xcopy /S /F /Y /I "%pkgs_path%\%%i\voxelmap\cache\*" "%dest_path%\cache"
xcopy /F /Y "%pkgs_path%\%%i\voxelmap\*.points" "%dest_path%\!new!.points"
rmdir /s /q "%dest_path%\cache\!new!"
for /f "delims=" %%k in ('dir /b "%dest_path%\cache"') do (
ren "%dest_path%\cache\%%k" !new!
)

)

) else (
REM echo 0
REM New folder didn't found, wait for it to appear.
goto :loop1
)


cd /d %original_cd%
:eof
