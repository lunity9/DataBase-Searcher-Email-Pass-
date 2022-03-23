@echo off
color 0f
echo.
set /p a="Full Or Partial Email: "
if [%a%]==[] ( 
    CALL:error
    pause
    EXIT /B
) 
if [%a%] NEQ [] (
    CALL:main
    EXIT /B 1 
)
ECHO is on
:main
echo.
echo Name is: %a%
sift %a%
pause
