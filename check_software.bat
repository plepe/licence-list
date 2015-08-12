@echo off
setlocal enabledelayedexpansion

rem Microsoft Office
for /f "tokens=3 delims=." %%a in ('reg query "HKEY_CLASSES_ROOT\Word.Application\CurVer"') do set reg=%%a

if [%reg%] neq [] (
  echo MS Office %reg%
)
