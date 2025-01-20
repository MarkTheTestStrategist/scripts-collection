@echo off
Title "Checkout a specific branch"
echo.
echo 1. Change Directory to C:\Dev\<projectName>
CD /D C:/dev/<projectName>
echo.
echo 2. Checkout the main branch
git checkout main 
echo.
echo 3. Pulling the latest code base
git pull
echo.
echo 4. Fetch all the remote branches
git fetch --prune
echo.
echo.
:: Show branches
git branch
echo.
echo 5. Run NPM Install to get latest packages
start cmd /c npm install
echo.
echo ### You are good to go! ###
echo.
::Enter details here instead of having to type them in more than once
git checkout feature/<branchName>
npm run start
echo.
:: Keep the CMD window open 
cmd /k
