@echo off
setlocal

REM Navigate to the "sosa_lab03" directory
cd "test\sosa_lab03"

REM Create the "logs" directory in the parent directory
mkdir "..\..\logs"

REM Get the current timestamp
set timestamp=%DATE:/=-%_%TIME::=-%
set timestamp=%timestamp: =%
set timestamp=%timestamp:.=_%


REM Set initial exit code to 0
set ext=0

REM Set the log file names
set banditLogFile=banditLog_%timestamp%
set testLogFile=testsLog_%timestamp%

REM Run bandit and redirect output to the bandit log file
bandit -r "..\..\ispitivanje.py" "..\..\dodatak_A.py" > "..\..\logs\%banditLogFile%"

REM Run test.py and check the exit code
if errorlevel 1 (
  REM If the exit code is non-zero, create the test log file and redirect output to it
  python "..\..\ispitivanje.py" > "..\..\logs\%testLogFile%" 2>&1
  set ext=1
)

REM Exit with the final exit code
exit /b %ext%
