 @echo off 

title Sistema de Activacion de Windows XP

mode con lines=50
mode con cols=100

set /p "conf=Esta a un paso de activar windows xp, si realmente quiere activarlo, presione "s", sino simplemente "n" (S/N): "
if %conf%==s goto :init
goto :end
:init

echo validando archivos..

call existevalxp.bat
 
echo Averiguando acerca de su sistema operativo... 


rem "%programfiles%\Archivos comunes\Microsoft Shared\MSInfo\msinfo32.exe"

pause 


echo A continuacion se le mostrara dos opciones, elija la que le convenga segun su requerimiento. 
echo.
echo.
echo 1 = Activacion de Emergencia 30 dias.
echo 2 = Activacion Total de Windows Xp 

SET /P resultado=Option =  

if "%resultado%"=="1" goto op1

if "%resultado%"=="2" goto op2  


:op1

regsvr32 regwizc.dll
regsvr32 licdll.dll
rundll32.exe syssetup,SetupOobeBnk

echo Listo!
echo Windows esta Activado por 30 dias!

goto siguiente

:op2 

echo Activando y registrando windows de manera permanente.. 

call LICENCIA.REG

echo listo!
echo Windows activado de manera permanente! 

goto siguiente 

:siguiente 

msoobe /a 

echo todo listo! 


:end