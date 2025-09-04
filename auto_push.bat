@echo off
cd C:\Users\ranje\Documents\MyfactoryApp

REM Add all changes
git add .

REM Commit with timestamp
git commit -m "Auto update %date% %time%"

REM Push to GitHub
git push -u origin main
