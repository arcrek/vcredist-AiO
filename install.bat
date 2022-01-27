@echo off

title "Microsoft Visual C++ Redistributable All-in-One  -  fb.com/nguyendangdat.spt"
mode con lines=30 cols=115
rem >> code get admin privileges take from TuaKie. Thanks to Trinh Tuan Kiet.
chcp 65001 >nul
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo. & echo -------------------------------------------------
    echo. & echo ^>^> Please use RIGHT CLICK - Run as administrator
    echo. & echo ^>^> Su dung CHUOT PHAI - Run as administrator
    echo. & echo -------------------------------------------------
    color 4f & timeout /t 2 >nul
    goto goUAC 
) else (
 goto goADMIN )

:goUAC
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:goADMIN

color 07
CD /d %~dp0bin
call "%~dp0bin\permissions.bat"
call "%~dp0bin\language.bat"

:SRT

color 07
cls & echo. & echo Microsoft Visual C++ Redistributable All-in-One & echo https://github.com/nguyendang-dat/vcredist-AiO & echo. & echo %_001_% & echo.

set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

echo %_001_% & echo. & echo %_003_%
start /wait vcredist_x86_2005.exe /q
echo.

echo %_001_% & echo. & echo %_005_%
start /wait vcredist_x86_2008.exe /qb
echo.

echo %_001_% & echo. & echo %_007_%
start /wait vcredist_x86_2010.exe /passive /norestart
echo.

echo %_001_% & echo. & echo %_009_%
start /wait vcredist_x86_2012.exe /passive /norestart
echo.

echo %_001_% & echo. & echo %_011_%
start /wait vcredist_x86_2013.exe /passive /norestart
echo.

echo %_001_% & echo. & echo %_013_%
start /wait VC_redist.x86_2015-2022.exe /passive /norestart

goto :END

:X64

echo %_001_% & echo. & echo %_003_%
start /wait vcredist_x86_2005.exe /q
echo.

echo %_001_% & echo. & echo %_004_%
start /wait vcredist_x64_2005.exe /q
echo.

echo %_001_% & echo. & echo %_005_%
start /wait vcredist_x86_2008.exe /qb
echo.

echo %_001_% & echo. & echo %_006_%
start /wait vcredist_x64_2008.exe /qb
echo.

echo %_001_% & echo. & echo %_007_%
start /wait vcredist_x86_2010.exe /passive /norestart
echo.

echo %_001_% & echo. & echo %_008_%
start /wait vcredist_x64_2010.exe /passive /norestart
echo.

echo %_001_% & echo. & echo %_009_%
start /wait vcredist_x86_2012.exe /passive /norestart
echo.

echo %_001_% & echo. & echo %_010_%
start /wait vcredist_x64_2012.exe /passive /norestart
echo.

echo %_001_% & echo. & echo %_011_%
start /wait vcredist_x86_2013.exe /passive /norestart
echo.

echo %_001_% & echo. & echo %_012_%
start /wait vcredist_x64_2013.exe /passive /norestart
echo.

echo %_001_% & echo. & echo %_013_%
start /wait VC_redist.x86_2015-2022.exe /passive /norestart
echo.

echo %_001_% & echo. & echo %_014_%
start /wait VC_redist.x64_2015-2022.exe /passive /norestart

goto END

:END

cls
echo. & echo %_001_% & echo. & echo %_015_% & echo %_016_% & echo %_017_% & echo. & echo %_001_%
pause >nul

exit
