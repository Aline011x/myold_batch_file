@echo off 

set /p "conf=Eescriba la unidad a desfragmetar: Ej: C "
if %conf%==s goto :init
goto :end
:init

@echo  Comenzando la desfragmentación.. 
DEFRAG.exe %UNIT%: /U /V /H
@echo La Desfragmentación a finalizado.
@pause 
