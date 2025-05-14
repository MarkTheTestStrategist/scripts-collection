<#
.SYNOPSIS
    This script installs a list of developer tools using Chocolatey.
.DESCRIPTION
    It checks for administrator privileges, installs Chocolatey if not already installed, and proceeds to install the defined list of applications.
.NOTES
    Script must be run as Administrator.
#>

# Function to check for Administrator privileges
Function Test-Administrator {
    $currentUser = New-Object Security.Principal.WindowsPrincipal ([Security.Principal.WindowsIdentity]::GetCurrent())
    return $currentUser.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}

# Check if script is running as Administrator
if (-Not (Test-Administrator)) {
    Write-Host "ERROR: You must run this script as an Administrator!" -ForegroundColor Red
    Write-Host "Right-click on PowerShell and select 'Run as Administrator'."
    Exit 1
}

# Install Chocolatey if not already installed
if (-Not (Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Host "Chocolatey not found. Installing Chocolatey..." -ForegroundColor Yellow
    Set-ExecutionPolicy Bypass -Scope Process -Force;
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12;
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    choco feature enable -n=allowGlobalConfirmation
    Write-Host "Chocolatey installed successfully!" -ForegroundColor Green
} else {
    Write-Host "Chocolatey is already installed." -ForegroundColor Green
}

# List of software to install
$softwareList = @(
    "git.install",
    "notepadplusplus",
    "screentogif",
    "greenshot",
    "evernote",
	"gitkraken"
    "vscode",
    "nodejs",
    "visualstudio2022professional",
	"vscode",
    "postman",
    "sql-server-management-studio",
	"sql-server-express",
    "docker-desktop",
    "kubernetes-helm",
    "azure-cli",
    "terraform",
    "fiddler",
    "servicebusexplorer",
    "firefox",
	"googlechrome",
	"microsoft-edge",
	"opera",
    "drawio",
    "pycharm-community",
    "azurestorageemulator",
    "seq",
    "linqpad",
	"zoom",
	"slack",
	"snagit",
	"sharex",
	"powertoys",
	"pycharm-community"
)

# Install each application
foreach ($software in $softwareList) {
    Write-Host "Installing $software..." -ForegroundColor Cyan
    choco install $software -y
    if ($?) {
        Write-Host "$software installed successfully!" -ForegroundColor Green
    } else {
        Write-Host "Failed to install $software." -ForegroundColor Red
    }
}

Write-Host "All installations complete!" -ForegroundColor Green
