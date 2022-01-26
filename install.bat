@echo off
title "Microsoft Visual C++ Redistributable All-in-One  -  fb.com/nguyendangdat.spt"
CD /d %~dp0
mode con lines=30 cols=115


echo.
echo Microsoft Visual C++ Redistributable All-in-One
echo https://github.com/nguyendang-dat/vcredist-AiO
echo.
echo Installing packages...
echo.

set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

echo -------------------------------------------------
echo.
echo Installing vcredist_2005_x86...
start /wait vcredist_x86_2005.exe /q
echo.

echo -------------------------------------------------
echo.
echo Installing vcredist_2008_x86...
start /wait vcredist_x86_2008.exe /qb
echo.

echo -------------------------------------------------
echo.
echo Installing vcredist_2010_x86...
start /wait vcredist_x86_2010.exe /passive /norestart
echo.

echo -------------------------------------------------
echo.
echo Installing vcredist_2012_x86...
start /wait vcredist_x86_2012.exe /passive /norestart
echo.

echo -------------------------------------------------
echo.
echo Installing vcredist_2013_x86...
start /wait vcredist_x86_2013.exe /passive /norestart
echo.

echo -------------------------------------------------
echo.
echo Installing vcredist_2015-2022_x86...
start /wait VC_redist.x86_2015-2022.exe /passive /norestart

goto END

:X64

echo -------------------------------------------------
echo.
echo Installing vcredist_2005_x86...
start /wait vcredist_x86_2005.exe /q
echo.

echo -------------------------------------------------
echo.
echo Installing vcredist_2005_x64...
start /wait vcredist_x64_2005.exe /q
echo.

echo -------------------------------------------------
echo.
echo Installing vcredist_2008_x86...
start /wait vcredist_x86_2008.exe /qb
echo.

echo -------------------------------------------------
echo.
echo Installing vcredist_2008_x64...
start /wait vcredist_x64_2008.exe /qb
echo.

echo -------------------------------------------------
echo.
echo Installing vcredist_2010_x86...
start /wait vcredist_x86_2010.exe /passive /norestart
echo.

echo -------------------------------------------------
echo.
echo Installing vcredist_2010_x64...
start /wait vcredist_x64_2010.exe /passive /norestart
echo.

echo -------------------------------------------------
echo.
echo Installing vcredist_2012_x86...
start /wait vcredist_x86_2012.exe /passive /norestart
echo.

echo -------------------------------------------------
echo.
echo Installing vcredist_2012_x64...
start /wait vcredist_x64_2012.exe /passive /norestart
echo.

echo -------------------------------------------------
echo.
echo Installing vcredist_2013_x86...
start /wait vcredist_x86_2013.exe /passive /norestart
echo.

echo -------------------------------------------------
echo.
echo Installing vcredist_2013_x64...
start /wait vcredist_x64_2013.exe /passive /norestart
echo.

echo -------------------------------------------------
echo.
echo Installing vcredist_2015-2022_x86...
start /wait VC_redist.x86_2015-2022.exe /passive /norestart
echo.

echo -------------------------------------------------
echo.
echo Installing vcredist_2015-2022_x64...
start /wait VC_redist.x64_2015-2022.exe /passive /norestart

goto END

:END

cls
echo.
echo -------------------------------------------------
echo.
echo Installation completed successfully.
echo Thank you for using this script.
echo Press any key to exit...
echo.
echo -------------------------------------------------
pause >nul

exit
