@echo off
setlocal

:: ==========================================
:: CHANGE THIS PATH TO YOUR SPECIFIC FOLDER
:: ==========================================
set "TARGET_FOLDER=E:\develop\Qcard\test"

:: Check if the folder exists to prevent errors
if not exist "%TARGET_FOLDER%" (
    echo Error: The folder "%TARGET_FOLDER%" does not exist.
    echo Please check the path in the script.
    pause
    exit /b
)

echo Starting rename process in: %TARGET_FOLDER%
echo ------------------------------------------------

:: Loop through all .txt files starting with "Qwen"
for %%F in ("%TARGET_FOLDER%\Qwen*.txt") do (
    echo Renaming: %%~nxF  ---^>  %%~nF.svg
    ren "%%F" "%%~nF.svg"
)

echo ------------------------------------------------
echo Process completed successfully.
pause