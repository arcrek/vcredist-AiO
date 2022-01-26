@echo off
CD /d %~dp0

echo.
echo Microsoft Visual C++ Redistributable All-in-One _nguyendangdat
echo https://github.com/nguyendang-dat/c-redistributable-AIO
echo.
echo Installing runtime packages...

set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

echo 2005...
start /wait vcredist_x86_2005.exe /q

echo 2008...
start /wait vcredist_x86_2008.exe /qb

echo 2010...
start /wait vcredist_x86_2010.exe /passive /norestart

echo 2012...
start /wait vcredist_x86_2012.exe /passive /norestart

echo 2013...
start /wait vcredist_x86_2013.exe /passive /norestart

echo 2015, 2017 ^& 2019...
start /wait VC_redist.x86_2015-2022.exe /passive /norestart

goto END

:X64

echo 2005...
start /wait vcredist_x86_2005.exe /q
start /wait vcredist_x64_2005.exe /q

echo 2008...
start /wait vcredist_x86_2008.exe /qb
start /wait vcredist_x64_2008.exe /qb

echo 2010...
start /wait vcredist_x86_2010.exe /passive /norestart
start /wait vcredist_x64_2010.exe /passive /norestart

echo 2012...
start /wait vcredist_x86_2012.exe /passive /norestart
start /wait vcredist_x64_2012.exe /passive /norestart

echo 2013...
start /wait vcredist_x86_2013.exe /passive /norestart
start /wait vcredist_x64_2013.exe /passive /norestart

echo 2015, 2017 ^& 2019 ^& 2022...
start /wait VC_redist.x86_2015-2022.exe /passive /norestart
start /wait VC_redist.x64_2015-2022.exe /passive /norestart

goto END

:END

echo.
echo Installation completed successfully

exit