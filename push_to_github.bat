@echo off
title FinPath AI - Push to GitHub
echo ========================================================
echo Pushing FinPath AI to your GitHub Repository...
echo ========================================================
cd /d "%~dp0"

git branch -M main

:: Safely set the remote URL without "remote already exists" error
git remote set-url origin https://github.com/Bhargavasood07/finpath-ai.git 2>nul || git remote add origin https://github.com/Bhargavasood07/finpath-ai.git

echo.
echo Current Remote:
git remote -v
echo.
echo Pushing code to GitHub...
git push -u origin main

echo.
if %ERRORLEVEL% equ 0 (
    echo ========================================================
    echo SUCCESS! Code successfully pushed to GitHub:
    echo https://github.com/Bhargavasood07/finpath-ai
    echo ========================================================
) else (
    echo.
    echo ========================================================
    echo If it says "Repository not found":
    echo 1. Go to https://github.com/new
    echo 2. Create the repository named "finpath-ai"
    echo 3. Then run this script again!
    echo ========================================================
)
pause
