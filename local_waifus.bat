
@echo off
cd /d "%~dp0"
setlocal enabledelayedexpansion
set "waifus=local_waifus.js"
echo window.local_waifus={>!waifus!
set "slash="
set "folder=." & if exist "*.jpg" ( call :list ) else if exist "*.png" call :list
set "slash=./"
for /D %%i in (*) do set "folder=%%~i" & if exist "%%~i\*.jpg" ( call :list ) else if exist "%%~i\*.png" call :list
echo };>>!waifus!
echo DONE
exit /b
:list
@echo "!folder!"
@(
@echo '!folder:'=\'!':[
@for %%j in ("!folder!\*.jpg") do @set "file=%%~nxj" & @call :line
@for %%j in ("!folder!\*.png") do @set "file=%%~nxj" & @call :line 
@echo ],
)>>!waifus!
exit /b
:line
@echo '!slash!!folder:'=\'!/!file:'=\'!',
@exit /b
