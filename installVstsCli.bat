@echo off
choco install vsts-cli
call refreshenv

SETLOCAL EnableDelayedExpansion

for /f "tokens=*" %%i in ('where vsts') do set cliExecutable=%%i
for /f "tokens=*" %%i in ("%cliExecutable%") do set cliPath=%%~dpi
echo ##vso[task.prependpath]%cliPath%