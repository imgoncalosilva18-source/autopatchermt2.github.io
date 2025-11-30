@echo off
echo A gerar patchlist...

SET PATCHDIR=patch
SET OUTFILE=patch\patchlist.txt

del "%OUTFILE%" 2>nul

for /r "%PATCHDIR%" %%f in (*) do (
    set "full=%%f"
    set "rel=%%f"
    call :strip
)

echo Patchlist gerada com sucesso!
pause
exit /b

:strip
set "rel=%rel:%cd%\=%"
set "rel=%rel:\=/=%"
echo %rel%>>"%OUTFILE%"
exit /b
