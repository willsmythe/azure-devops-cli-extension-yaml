@echo off
choco install vsts-cli
call refreshenv

SETLOCAL
for /f %%i in ('where vsts') do set cliExecutable=%%i
for %%i in ("%cliExecutable%") do set cliPath=%%~dpi

echo ##vso[task.prependpath]%cliPath%
