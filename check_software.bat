@echo off
setlocal enabledelayedexpansion

rem Microsoft Office
for /f "tokens=3 delims=." %%a in ('reg query "HKEY_CLASSES_ROOT\Word.Application\CurVer"') do set reg=%%a

if [%reg%] neq [] (
  echo MS Office %reg%
)

rem Adobe Acrobat
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Adobe\Adobe Acrobat\9.0" >nul 2>nul
if %ERRORLEVEL%==0 echo Adobe Acrobat 9
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Adobe\Adobe Acrobat\10.0" >nul 2>nul
if %ERRORLEVEL%==0 echo Adobe Acrobat 10
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Adobe\Adobe Acrobat\11.0" >nul 2>nul
if %ERRORLEVEL%==0 echo Adobe Acrobat 11

rem Adobe Illustrator
set reg=
for /f "tokens=3 delims=." %%a in ('reg query "HKEY_CLASSES_ROOT\Adobe.Illustrator\CurVer"') do set reg=%%a

if [%reg%] neq [] (
  echo Adobe Illustrator %reg%
)

rem Adobe Photoshop
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Adobe\Photoshop" >nul 2>nul
if %ERRORLEVEL%==0 echo Adobe Photoshop

rem Adobe After Effects
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Adobe\After Effects\12" >nul 2>nul
if %ERRORLEVEL%==0 echo Adobe After Effects 12

rem Adobe Premiere
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Adobe\Premiere Pro\9.0" >nul 2>nul
if %ERRORLEVEL%==0 echo Adobe Premiere Pro 9

rem Autodesk Suite
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Autodesk\3dsMax" >nul 2>nul
if %ERRORLEVEL%==0 echo Autodesk Suite

rem MATLAB
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\MathWorks\MATLAB" >nul 2>nul
  if %ERRORLEVEL%==0 echo MATLAB

rem Mathematica
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Wolfram Research" >nul 2>nul
  if %ERRORLEVEL%==0 echo Wolfram Research Products
for /f %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Wolfram Research\Installations\2063990"') do set reg=%%a
if %ERRORLEVEL%==0 echo Wolfram Mathematica ???
