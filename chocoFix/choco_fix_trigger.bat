RMDIR /s /q C:\ProgramData\chocolatey

@pushd %~dp0 & fltmc | find "." && (powershell start '%~dp0\choco_fix.ps1' ' -ExecutionPolicy Bypass' -verb runas 2>nul) && (popd & exit /b)

@echo off
ECHO Set UAC = CreateObject^("Shell.Application"^) > "%temp%\OEgetPrivileges.vbs"
ECHO UAC.ShellExecute "powershell", "/c ""!batchPath! !batchArgs!""", "", "runas", 1 >> "%temp%\OEgetPrivileges.vbs"
"%temp%\OEgetPrivileges.vbs"

powershell -ExecutionPolicy Bypass -File %~dp0\choco_fix.ps1