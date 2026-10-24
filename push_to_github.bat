@echo off
title FinPath AI - Push to GitHub
echo ========================================================
echo Pushing FinPath AI to your GitHub Repository...
echo Target: https://github.com/Bhargavasood07/finpath-ai.git
echo ========================================================
cd /d "%~dp0"

git branch -M main
git remote remove origin 2>nul
git remote add origin https://github.com/Bhargavasood07/finpath-ai.git

echo.
echo Pushing commits to GitHub...
echo If a browser window or login prompt opens, sign in to approve.
echo.
git push -u origin main

echo.
if %ERRORLEVEL% equ 0 (
    echo ========================================================
    echo SUCCESS! Code successfully pushed to GitHub:
    echo https://github.com/Bhargavasood07/finpath-ai
    echo ========================================================
) else (
    echo ========================================================
    echo Please make sure you created the repo at:
    echo https://github.com/new with name "finpath-ai"
    echo ========================================================
)
pause
