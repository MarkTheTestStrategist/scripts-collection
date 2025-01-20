echo OFF

NET SESSION >nul 2>&1

IF %ERRORLEVEL% EQU 0 (

   echo.

) ELSE (

   echo.-------------------------------------------------------------

   echo ERROR: YOU ARE NOT RUNNING THIS WITH ADMINISTRATOR PRIVILEGES.

   echo. -------------------------------------------------------------

   echo. If you're seeing this, it means you don't have admin privileges!

   pause

   echo.

   echo. You will need to restart this program with Administrator privileges by right-clicking and select "Run As Administrator"

   pause 

    echo.

   echo Press any key to leave this program. Make sure to Run As Administrator next time!

   pause

   EXIT /B 1
powershell -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco feature enable -n=allowGlobalConfirmation
echo Chocolatey is ready to begin installing packages!

pause
@REM ------------------ Install Software below this line -----------------------------
pause

REM Write-Host "Installing visual studio 2022" 
REM choco install visualstudio2022professional -y

Write-Host "Git"
choco install git.install -y

Write-Host "Installing visual studio code" 
choco install vscode -y 

Write-Host "Installing visual studio 2022" 
choco install visualstudio2022professional -y 

Write-Host "Installing Postman" 
choco install postman -y 

Write-Host "Installing SSMS" 
choco install sql-server-management-studio -y 

Write-Host "Installing nodejs" 
choco install nodejs -y 

Write-Host "Installing Docker Desktop" 
choco install docker-desktop -y 

Write-Host "Installing Helm" 
choco install kubernetes-helm -y 

Write-Host "Installing Azure CLI" 
choco install azure-cli -y

Write-Host "Terraform" 
choco install terraform -y

Write-Host "Fiddler"
choco install fiddler -y

Write-Host "Service Bus Explorer"
choco install servicebusexplorer -y

Wrtie-Host "Firefox"
choco install firefox -y

Write-Host "NotePad++" 
choco install notepadplusplus -y

Write-Host "Evernote" 
choco install evernote -y

Write-Host "Draw IO"
choco install drawio -y

Write-Host "PyCharm"
choco install pycharm-community -y

Write-Host "ScreenToGif"
choco install screentogif -y

Write-Host "Greenshot"
choco install greenshot -y

Write-Host "Azure Storage Emulator"
choco install azurestorageemulator -y

Write-Host "Seq Logging UI"
choco install seq -y

Write-Host "Linq Pad"
choco install linqpad -y
