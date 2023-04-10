@echo off
title 
:start
echo.
echo                                               _____________________________
echo.
echo                                                   (1) = ONLINE
echo                                                   (2) = INVISIBLE
echo                                                   (3) = AWAY
echo                                                   (4) = LOOKING TO TRADE
echo                                                   (5) = LOOKING TO PLAY
echo                                                   (6) = BUSY
echo                                                   (7) = OFFLINE
echo                                                   (8) = EXIT
echo.
echo                                               _____________________________
echo.
echo.

choice /c:12345678 /n > nul
if errorlevel 8 goto EXIT
if errorlevel 7 goto OFFLINE
if errorlevel 6 goto BUSY
if errorlevel 5 goto LOOKING TO PLAY
if errorlevel 4 goto LOOKING TO TRADE
if errorlevel 3 goto AWAY
if errorlevel 2 goto INVISIBLE
if errorlevel 1 goto ONLINE

:ONLINE
rundll32 url.dll,FileProtocolHandler steam://friends/status/online
cls
goto start

:INVISIBLE
rundll32 url.dll,FileProtocolHandler steam://friends/status/invisible
cls
goto start

:AWAY
rundll32 url.dll,FileProtocolHandler steam://friends/status/away
cls
goto start

:LOOKING TO TRADE
rundll32 url.dll,FileProtocolHandler steam://friends/status/trade
cls
goto start

:LOOKING TO PLAY
rundll32 url.dll,FileProtocolHandler steam://friends/status/play
cls
goto start

:BUSY
rundll32 url.dll,FileProtocolHandler steam://friends/status/busy
cls
goto start

:OFFLINE
rundll32 url.dll,FileProtocolHandler steam://friends/status/offline
cls
goto start

:EXIT
taskkill /f /IM "steam.exe"
cls
goto start