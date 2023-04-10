@echo off
title 
:start

choice /c:123456 /n > nul
if errorlevel 6 goto BUSY
if errorlevel 5 goto LOOKING TO PLAY
if errorlevel 4 goto LOOKING TO TRADE
if errorlevel 3 goto AWAY
if errorlevel 2 goto INVISIBLE
if errorlevel 1 goto ONLINE

:loop
:ONLINE
rundll32 url.dll,FileProtocolHandler steam://friends/status/online

:INVISIBLE
rundll32 url.dll,FileProtocolHandler steam://friends/status/invisible

:AWAY
rundll32 url.dll,FileProtocolHandler steam://friends/status/away

:LOOKING TO TRADE
rundll32 url.dll,FileProtocolHandler steam://friends/status/trade

:LOOKING TO PLAY
rundll32 url.dll,FileProtocolHandler steam://friends/status/play

:BUSY
rundll32 url.dll,FileProtocolHandler steam://friends/status/busy
goto loop