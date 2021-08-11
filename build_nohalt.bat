@echo off
for %%I in (.) do set CurrDirName=%%~nxI
if exist "%~dp0release\" (
  clean & mingw32-make --directory="%~dp0
  powershell -ExecutionPolicy ByPass -file "%~dp0run.ps1"
) else (
  mingw32-make --directory="%~dp0
  powershell -ExecutionPolicy ByPass -file "%~dp0run.ps1"
)