@echo off

REM Navigate to the directory where this .bat file is located
cd /d "%~dp0"

REM Check if the publish folder exists
if not exist "publish\API.exe" (
    echo Application not found in the publish folder.
    pause
    exit /b
)

REM Navigate to the publish folder
cd publish

REM Set the environment to Development
set ASPNETCORE_ENVIRONMENT=Development

REM Run the application
API.exe

REM Pause to keep the console open (optional)
pause

