@echo off 


IF EXIST (
	
	"%WINDIR%/Prefech/*"
	set /p "conf=¿Desea Desfragmentar el archivo Prefech? (S/N): "
	if %conf%==s goto :init
		goto :end
		:init
		
		@echo  Comenzando la desfragmentación.. 
		defrag C: /B
		@echo La Desfragmentación de Prefech a finalizado.
		@pause
)
ELSE (
	end: 
)


