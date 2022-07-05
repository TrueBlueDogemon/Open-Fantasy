@echo off

title Open-Fantasy Game Launcher

echo Choose your connection method!
echo.
echo #1 - Offline Mode
echo #2 - Custom Server
echo.

:selection

set INPUT=1
set /P INPUT=Selection: 

if %INPUT%==1 (
    set TT_GAMESERVER=127.0.0.1
) elif INPUT=2 (
    set /P TT_GAMESERVER="Gameserver: "
) else (
    echo Oops! Try selecting again.
    goto selection
)

echo.

    set LOGIN_TOKEN=dev
    set /P LOGIN_TOKEN="Username: "

echo.

echo ===============================
echo Starting Toontown Fantasy

echo Username: %LOGIN_TOKEN%
echo Gameserver: %TT_GAMESERVER%

echo ===============================

cd ../

:main

"C:\Panda3D-1.11.0-x64\python\ppython.exe" -m toontown.launcher.QuickStartLauncher
pause

goto main