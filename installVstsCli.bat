@echo off
choco install vsts-cli
call refreshenv

for /f %%i in ('where vsts') do set cliExecutable=%%i
echo %cliExecutable%
for %%i in ("%cliExecutable%") do set cliPath=%%~dpi
echo %cliPath%

echo ##vso[task.prependpath]%cliPath%
