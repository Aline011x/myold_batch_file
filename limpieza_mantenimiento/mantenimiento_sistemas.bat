@echo off 

title Limpiador_Automático
mode con lines=50
mode con cols=100

set /p "conf=Esta segur@ de hacer una limpieza al sistema (S/N): "
if %conf%==s goto :init
goto :end
:init

@echo En estos instantes se comenzara a vaciar Recicle Bin.

rd /s %systemdrive%\$Recycle.Bin /q
cls
IF NOT EXIST "c:\RECYCLER" (

Echo La papelera esta vacia, no hay nada que eliminar. 

) Else (

	Echo Vaciendo la papelera..
	del /s /q /f c:\RECYCLER 
)

@echo La limpieza de recicle bin ha finalizado.

@echo Removing Temps...

del /s /q /f %TEMP%\\* 

del /S /q /f "%userprofile%\Configuración local\Temp" || "c:\Users\%username%\AppData\Local\Temp"

del /S /Q /F "%windir%\Temp"

del /S /Q /F "%windir%\Prefetch"

@echo Temporales eliminados.


@echo "En este momento se correra el limpiador.." 
cls
cleanmgr /sagerun:1 

@echo Ah finalizado el mantenimieno y la limpieza del equipo.


