<# 
Basic installations.
Comment out the ones you don't want to install, using a hash
#>


Write-Host "Installing Chocolaty"
# Construct the full path to InstallChocolaty.ps1 (assuming it's in the same directory)
$ChocoInstallPath = Join-Path $PSScriptRoot "install-chocolaty.ps1"

# Execute the Chocolatey installation script using dot sourcing
. $ChocoInstallPath

<# IMPORTANT
The following will only work if chocolaty has been installed successfully. 
Check installation by entering `choco` or `choco -?`#>

# Desktop Coding Software
Write-Host "Installing Desktop Coding Software"
Write-Host "----------------------------------"

Write-Host "Installing visual studio 2022"
choco install visualstudio2022professional -y

Write-Host "Installing visual studio code"
choco install vscode -n

Write-Host "Installing GitKraken"
choco install gitkraken -y

Write-Host "Installing GitBash"
choco install git -y

# Coding Packages
Write-Host "Installing Coding Packages"
Write-Host "----------------------------------"

Write-Host "Installing nodejs"
choco install nodejs -n

# Database Software
Write-Host "Installing Database Software"
Write-Host "----------------------------------"

Write-Host "Installing SSMS"
choco install sql-server-management-studio -n -y

Write-Host "Installing SQL Server Express"
choco install sql-server-express -n -y

# Communication Software
Write-Host "Installing Communication Software"
Write-Host "----------------------------------"

Write-Host "Installing Zoom"
choco install zoom -y

Write-Host "Installing Teams"
choco install microsoft-teams -y

Write-Host "Installing Slack"
choco install slack -y

# Container Software
Write-Host "Installing Container Software"
Write-Host "----------------------------------"

Write-Host "Installing Docker Desktop"
choco install docker-desktop -y

# Pipeline Packages
Write-Host "Installing Pipeline Packages"
Write-Host "----------------------------------"

Write-Host "Installing Azure CLI"
choco install azure-cli -y

Write-Host "Installing Terraform"
choco install terraform -y

Write-Host "Installing Helm"
choco install kubernetes-helm -y

# API Testing Software
Write-Host "Installing API Testing Software"
Write-Host "----------------------------------"

Write-Host "Installing Fiddler"
choco install fiddler -y

Write-Host "Installing Postman"
choco install postman -y

Write-Host "Installing Service Bus Explorer"
choco install servicebusexplorer -y

# Browsers
Write-Host "Installing Desktop Browsers"
Write-Host "----------------------------------"

Write-Host "Installing Firefox"
choco install firefox -y

Write-Host "Installing Chrome"
choco install googlechrome -y

Write-Host "Installing Opera"
choco install opera -y

Write-Host "Installing MS Edge"
choco install microsoft-edge -y

# Screen Capture for Image & Video
Write-Host "Installing Screen Capture for Image & Video"
Write-Host "--------------------------------------------"

Write-Host "Installing ScreenToGif"
choco install screentogif.install -y

Write-Host "Installing Snagit"
choco install snagit -y

Write-Host "Installing ShareX"
choco install sharex -y

Write-Host "Installing Greenshot"
choco install greenshot -y

# Notepads & Note Software
Write-Host "Installing Notepads & Note Software"
Write-Host "-----------------------------------"

Write-Host "Installing Evernote"
choco install evernote -y

Write-Host "Installing Notepad++"
choco install notepadplusplus -y

# Utilities
Write-Host "Installing Utilities"
Write-Host "----------------------------------"

Write-Host "Installing PowerToys"
choco install powertoys -y

# Diagramming and Visualization Tools
Write-Host "Installing Diagramming and Visualization Tools"
Write-Host "-----------------------------------------------"

Write-Host "Installing DrawIO"
choco install drawio -y

# Task Management and Productivity Tools
Write-Host "Installing Task Management and Productivity Tools"
Write-Host "--------------------------------------------------"

Write-Host "Installing Tick!Tick!"
choco install ticktick -y