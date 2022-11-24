@echo off
powershell -NoProfile -ExecutionPolocy Unrestricted .\shino-syn.ps1 %1
pause > nul
exit