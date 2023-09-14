@echo off
rem 要注意脚本共用问题，小心变量串了
set a=D:\MCLDownload\Game\.minecraft\
for /f "delims=" %%i in ('dir /b /a:d') do (
echo %%i
if exist %a%saves\%%i\level_bak.dat (
echo THIS, %%i
set flag_this=%%i
)
)


rem 以下存根
rem 检查是否存在MCVINE_World
rem 不存在则立即创建，添加到配置列表，标记为新对象
rem 将匹配到的配置返回rp，rp开始处理pkgs

rem 函数能存另外的脚本嘛？
rem 变量会不会串？答：会串

rem 标签会串嘛？答：标签不会串
