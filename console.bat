@echo off
color 0A
:loop
if exist consoleinput.txt (goto output) else (goto loop)
:output
< consoleinput.txt (
  set /p output=
)
echo %output%
del consoleinput.txt
goto loop
