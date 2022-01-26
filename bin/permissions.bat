@echo off

rem >> code check permissions take from E2B. Thanks to Steve Si.
:check_Permissions
set randname=%random%%random%%random%%random%%random%
md "%windir%\%randname%" 2>nul
if %errorlevel%==0 goto :end
if %errorlevel%==1 (
    echo. & echo -------------------------------------------------
    echo. & echo ^>^> Please use RIGHT CLICK - Run as administrator
    echo. & echo ^>^> Su dung CHUOT PHAI - Run as administrator
    echo. & echo -------------------------------------------------
    color 4f& timeout /t 15 >nul
    Set ADMIN=FAIL
    goto :end
)
goto :check_Permissions
:end
rd "%windir%\%randname%" 2>nul
if "%ADMIN%"=="FAIL" exit
