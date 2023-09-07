@echo off 

title Existe Validador de XP
mode con lines=50
mode con cols=100

IF EXIST "%windir%\system32\msoobe.exe"  (

	Echo msoobe esta copiado, no es necesario volver a copiarlo. 
pause
 ) ELSE (


xcopy /Y /S /Q "%windir%\system32\oobe\msoobe.exe" "%windir%\system32"
pause
cls
echo Validador Listo.
@pause 

)