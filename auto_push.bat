@echo off
set datetime=%date:~10,4%-%date:~4,2%-%date:~7,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%
set datetime=%datetime: =0%

echo [main] Auto update %datetime%

REM Always add key project files
git add firebase.json package.json public src build .github

REM Add any other changes
git add -A

REM Commit with timestamp
git commit -m "Auto update %datetime%"

REM Push to GitHub
git push -u origin main
