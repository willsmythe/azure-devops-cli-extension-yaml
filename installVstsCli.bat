@echo off
choco install vsts-cli
call refreshenv

REM echo "Where is VSTS?"
where vsts

SETLOCAL EnableDelayedExpansion 

for /f "tokens=*" %%i in ('where vsts') do set cliExecutable=%%i
echo %cliExecutable%

for /f "tokens=*" %%i in ("%cliExecutable%") do set cliPath=%%~dpi
echo %cliPath%

echo ##vso[task.prependpath]%cliPath%
