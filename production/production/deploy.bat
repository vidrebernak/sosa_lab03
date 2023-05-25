@echo off
setlocal

REM Remove the existing "production" directory
rmdir /s /q "\production"

REM Create the "production" directory
mkdir "\production"

REM Copy the contents of the "test/sosa_lab03/" directory to the "production" directory
xcopy /E "\test\sosa_lab03\*" "\production"

endlocal
