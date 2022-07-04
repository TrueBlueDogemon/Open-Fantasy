@echo off
title Start Toontown Fantasy - Game Client
cd..

:fantasy

rem Read the contents of PPYTHON_PATH into %PPYTHON_PATH%:
set /P PPYTHON_PATH=<PPYTHON_PATH

set LOGIN_TOKEN=dev
set /P LOGIN_TOKEN="Username: "

set GAME_SERVER=127.0.0.1
set /P GAME_SERVER="Gameserver: "

%PPYTHON_PATH% -m toontown.launcher.QuickStartLauncher
pause

goto fantasy