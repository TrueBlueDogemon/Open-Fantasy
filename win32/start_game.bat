@echo off

start start_astron_server.bat
start start_uberdog_server.bat
start start_ai_server.bat

title Open-Fantasy Game Launcher

echo Choose your connection method!
echo.
echo #1 - Offline (specify a server to play Custom Mode)
echo.

:selection

set INPUT=1
set /P INPUT=Selection: 

if %INPUT%==1 (
    set TT_GAMESERVER=127.0.0.1
    set /P TT_GAMESERVER="Gameserver: "
) else (
    goto selection
)

echo.

if %INPUT%==1 (
    set /P LOGIN_TOKEN="Username: "
) else (
    set /P LOGIN_TOKEN=Username:
)

echo.

echo ===============================
echo Starting Toontown Fantasy

if %INPUT%==1 (
    echo Username: %LOGIN_TOKEN%
) else (
    echo Username: %TT_PLAYCOOKIE%
)

echo Gameserver: %TT_GAMESERVER%
echo ===============================

cd ../

:main
if %INPUT%==1 (
    "C:\Panda3D-1.11.0-x64\python\ppython.exe" -m toontown.launcher.QuickStartLauncher
)

pause

goto main