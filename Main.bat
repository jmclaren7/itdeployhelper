@echo off
echo Checking administrative permissions...

net session >nul 2>&1
if %errorLevel% == 0 (
	echo Success: Administrative permissions confirmed.
) else (
        echo Warning: No administrative permissions.
)

set /p params="Enter Parameters (or leave blank): "
"%~dp0AutoIT3.exe" /AutoIt3ExecuteScript "%~dp0Main.au3" %params%