@echo off
color 0A
if exist consolesize.txt goto size
:loop
if exist consoleinput.txt (goto output) else (goto loop)
:output
< consoleinput.txt (
  set /p output=
)
echo %output%
echo.
del consoleinput.txt
goto loop
:size
< consolesize.txt (
  set /p size=
)
mode %size%
del consolesize.txt
goto loop
