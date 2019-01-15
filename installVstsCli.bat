@echo off
choco install vsts-cli
echo PATH: %PATH%
call refreshenv
echo PATH: %PATH%
vsts --version
echo ##vso[task.setvariable variable=PATH;]%PATH%
