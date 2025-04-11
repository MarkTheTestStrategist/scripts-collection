REM # Comment out any you dont want to launch using 'REM'
echo off
title "Open Favourite Programs"
echo Load Evernote
start C:\"Program Files (x86)"\Evernote\evernote.exe
echo.
echo Start Chrome profile (Testing - Stuart)
start chrome.exe --profile-directory=Default  --start-maximized
echo.
echo Start Postman
start C:\Users\%USERPROFILE%\AppData\Local\Postman\postman.exe
echo.
echo Start Notepadd++
start C:\"Program Files"\"Notepad++"\"notepad++.exe" --start-maximized
echo.
echo Load Visual Studio and A project
start C:\"Program Files"\"Microsoft Visual Studio"\2022\Professional\Common7\IDE\devenv.exe "C:\Dev\REPOS\RepoName\project.sln"  --start-maximized
echo.
echo Load Draw IO
start C:\"Program Files"\draw.io\draw.io.exe
echo.
echo Load Microsoft Teams
start C:\Users\%USERPROFILE%\AppData\Local\Microsoft\Teams\current\Teams.exe
echo.
echo Launch SQL Server
start C:\"Program Files (x86)"\"Microsoft SQL Server Management Studio 19"\Common7\IDE\Ssms.exe
echo.
echo Load Outlook
start C:\"Program Files"\"Microsoft Office"\root\Office16\OUTLOOK.EXE  --start-maximized
echo.
echo Open TickTick!
start C:\"Program Files (x86)"\TickTick\TickTick.exe  --start-maximized
echo.
echo All Loaded Chief!
echo END 
timeout 180 /nobreak
exit