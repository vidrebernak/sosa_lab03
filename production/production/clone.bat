@echo off
setlocal
set "REPO_DIR=%CD%\test"

if exist "%REPO_DIR%" (
    rmdir /s /q "%REPO_DIR%"
)
mkdir "%REPO_DIR%"
cd "%REPO_DIR%"
git clone https://github.com/vidrebernak/sosa_lab03.git
