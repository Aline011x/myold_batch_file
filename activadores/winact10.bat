@echo off 

title Activador de Windows 

mode con lines=50
mode con cols=100

color b

set /p "conf=Esta segur@ de que quiere continuar? Al final de la activacion de windows 10 se reiniciara el sistema.. (s\n)" 
if %conf%==s goto :init
goto :end
:init
 
echo 	Averiguando acerca de la version de su sistema operativo..

winver 
pause 

echo	A continuación, se le mostraran unas claves de licencia de windows 10, las cuales se identificaran con los siguientes numeros: 

echo     1: Windows 10 Home: TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 
echo     2: Windows 10 Pro: W269N-WFGWX-YVC9B-4J6C9-T83GX
echo     3: Windows 10 Pro N: MH37W-N47XK-V7XM9-C7227-GCQG9
echo     4: Windows 10 Pro Education: 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
echo     5: Windows 10 Home Single Lenguage: 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
echo.
echo.
echo 	Cada windows esta asociado a una clave, por favor escriba el numero de su windows correspondiente que se mostro en la pantalla anterior:
echo. 
echo. 
echo 		¿1? ¿2? ¿3? ¿4? ¿5?
SET /P resultado=Opcion= 

if "%resultado%"=="1" goto op1

if "%resultado%"=="2" goto op2

if "%resultado%"=="3" goto op3

if "%resultado%"=="4" goto op4

if "%resultado%"=="5" goto op5


:op1
echo Windows 10 Home Seleccionado
slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
goto siguiente 

:op2
echo Windows 10 Pro Seleccionado.
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
goto siguiente 

:op3
echo Windows 10 Pro N Seleccionado
slmgr /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
goto siguiente 

:op4
echo Windows 10 Pro Education Seleccionado
slmgr /ipk 6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
goto siguiente 

:op5
echo Windows 10 Home Single Lenguage eleccionado
slmgr /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
goto siguiente 

:siguiente
echo Todo bien!

slmgr /skms kms.digiboy.ir 
slmgr /ato 

echo En este momento esa reiniciando el sistema.. 
pause 

:end

cls&exit
