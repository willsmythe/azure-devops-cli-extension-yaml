@echo off
REM choco install vsts-cli
REM call refreshenv

echo "Where is VSTS?"
call where vsts

for /f %%i in ('where vsts') do set cliExecutable=%%i
echo %cliExecutable%

for %%i in ("%cliExecutable%") do set cliPath=%%~dpi
echo %cliPath%

echo ##vso[task.prependpath]%cliPath%
