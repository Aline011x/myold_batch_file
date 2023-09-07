@echo off 

set /p "conf=Desea hacer un analisis al sistema? (S/N): "
if %conf%==s goto :init
goto :end
:init

@echo En este momento se analizara el sistema

sfc /scannow

DISM /Online /Cleanup-Image /CheckHealth
DISM /Online /Cleanup-Image /ScanHealth
DISM /Online /Cleanup-Image /RestoreHealth

@pause 
