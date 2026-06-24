@echo off

if exist "index.html" del /f /q "index.html"

for %%F in (*.html) do (
if /I not "%%~nxF"=="index.html" (
ren "%%F" "index.html"
goto :done
)
)

:done
