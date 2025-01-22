@echo off

REM Check if the application file exists
if not exist "E:\MyApp\publish\API.exe" (
    echo Application not found at: E:\MyApp\publish\API.exe
    pause
    exit /b
)

REM Navigate to the application directory
cd /d "E:\MyApp\publish"

REM Set the environment to Development (before running the exe)
set ASPNETCORE_ENVIRONMENT=Development

REM Run the application
start API.exe

REM Pause to keep the console open (optional)
pause

