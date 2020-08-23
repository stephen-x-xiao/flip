@ECHO off
SETLOCAL
CALL :find_dp0

IF EXIST "node.exe" (
  SET "_prog=node.exe"
) ELSE (
  SET "_prog=node"
  SET PATHEXT=%PATHEXT:;.JS;=;%
)

"%_prog%"  "C:\Users\xxiao\AppData\Roaming\npm\node_modules\live-server\live-server.js" %*
ENDLOCAL
EXIT /b %errorlevel%
:find_dp0
SET dp0=%~dp0
EXIT /b
