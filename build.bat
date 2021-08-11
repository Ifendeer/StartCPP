@echo off
for %%I in (.) do set CurrDirName=%%~nxI
if exist "%~dp0release\" ( 
  echo Cleaning and Rebuilding:
  clean & echo ------------------------------- & mingw32-make --directory="%~dp0
  echo -------------------------------
  if exist "%~dp0release\%CurrDirName%.exe" (
    echo Output = release\%CurrDirName%.exe
    echo Build complete.
    pause
  ) else (
    echo Build failed.
    pause
  )
) else (
  echo Building:
  echo ------------------------------- & mingw32-make --directory="%~dp0
  echo -------------------------------
  if exist "%~dp0release\%CurrDirName%.exe" (
    echo Output = release\%CurrDirName%.exe
    echo Build complete.
    pause
  ) else (
    echo Build failed.
    pause
  )
)