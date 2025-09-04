@echo off
setlocal enabledelayedexpansion

:: Ask for GitHub username
set /p GITHUB_USER=Enter your GitHub username: 

:: Repo name
set REPO_NAME=myfactorycheck-demo

:: Initialize git if not already
git init

:: Add all files
git add .

:: Commit changes
git commit -m "First commit - MyFactoryCheck demo"

:: Set remote origin (ignore error if exists)
git remote add origin https://github.com/%GITHUB_USER%/%REPO_NAME%.git 2>nul

:: Push to GitHub
git branch -M master
git push -u origin master

echo.
echo ✅ Code pushed successfully to https://github.com/%GITHUB_USER%/%REPO_NAME%
echo 👉 Now go to https://vercel.com/new and import this repo to deploy.
pause
