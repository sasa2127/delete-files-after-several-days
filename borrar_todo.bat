@echo off
setlocal

:: directorio a limpiar
set "ruta=C:\Users\p9ac00547\Downloads"

:: número de días
set "dias=5"

forfiles /P "%ruta%" /S /D -%dias% /C "cmd /c del /Q @path"

forfiles /P "%ruta%" /S /D -%dias% /C "cmd /c if @isdir==TRUE rd /S /Q @path"

endlocal