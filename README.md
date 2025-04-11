# BatchFiles & PowerShell Scripts

A curated collection of Batch and PowerShell scripts to automate tasks, install software, and streamline processes. Use these scripts as templates or for direct deployment to enhance your workflow.

---

## Table of Contents

- [PowerShell Scripts](#powershell-scripts)
  - [Install Chocolatey (.bat)](#install-chocolatey-bat)
  - [Install Software for Testing a New Laptop (.ps1)](#install-software-for-testing-a-new-laptop-ps1)
  - [VM-to-VM Firewall Bypass (.ps1)](#vm-to-vm-firewall-bypass-ps1)
- [Batch Files](#batch-files)
  - [Windows Startup (.bat)](#windows-startup-bat)
  - [Checkout Specific Branch Prune (.bat)](#checkout-specific-branch-prune-bat)
  - [Drop Databases (.ps1)](#drop-databases-ps1)

---

## PowerShell Scripts

### Install Chocolatey (.bat)

This script installs [Chocolatey](https://chocolatey.org/), a prerequisite for many software installation processes.  
**Usage:**  
- Run the script in an elevated (Administrator) PowerShell session.

> **Note:**  
> The *NewStarterInstall* folder now includes everything you need. Simply clone this folder along with its contents, then execute [install-software.ps1](../NewStarterInstall/install-software.ps1) in admin mode. This script will automatically install Chocolatey as a prerequisite before proceeding with further software installation.

---

### Install Software for Testing a New Laptop (.ps1)

Automate the setup of your development environment with a one-stop PowerShell script to install essential tools and applications. The script includes installations for:

#### Desktop Coding Software
- Visual Studio 2022 Professional
- Visual Studio Code
- GitKraken
- Git Bash

#### Coding Packages
- Node.js

#### Database Software
- SQL Server Management Studio (SSMS)
- SQL Server Express

#### Communication Tools
- Zoom
- Microsoft Teams
- Slack

#### Container Tools
- Docker Desktop

#### Pipeline Utilities
- Azure CLI
- Terraform
- Kubernetes Helm

#### API Testing Applications
- Fiddler
- Postman
- Service Bus Explorer

#### Web Browsers
- Firefox
- Google Chrome
- Opera
- Microsoft Edge

#### Screen Capture Utilities
- ScreenToGif
- Snagit
- ShareX
- Greenshot

#### Notepads & Note Software
- Evernote
- Notepad++

#### System Utilities
- PowerToys

#### Diagramming & Visualization
- DrawIO

#### Task Management & Productivity
- TickTick

Simply run the script in an elevated session to install all the software needed for your new laptop setup.

---

### VM-to-VM Firewall Bypass (.ps1)

This script facilitates firewall bypass configuration between two virtual machines by adding specific services to a whitelist.  
**Usage:**  
- Execute the script in an elevated PowerShell session.
- Customize the list of services as necessary for your environment.

---

## Batch Files

### Windows Startup (.bat)

Keep your preferred applications launching on system startup.  
**Usage:**  
- Add this script to your Startup folder to automatically launch your favorite programs every time your PC or laptop is restarted.  
- Use this as a template for further customization.

---

### Checkout Specific Branch Prune (.bat)

Streamline your development workflow with this Git helper script. It performs the following tasks:
- Navigates to the specified directory.
- Checks out the main branch.
- Pulls the latest codebase.
- Fetches all remote branches.
- Runs `npm install` to update packages.
- Checks out your specified feature branch.

**Usage:**  
- Modify the directory path and branch names as needed.
- Run in a command prompt or via a script-enabled environment.

---

### Drop Databases (.ps1)

This PowerShell script safely removes unwanted databases on your local machine.  
**How It Works:**  
- Define the databases you wish to retain.  
- The script automatically detects and deletes all other databases.

**Usage:**  
- Run this script in an elevated PowerShell session.
- Customize the list of databases to keep in the script configuration.

---

Feel free to adjust the scripts or modify the instructions to better fit your environment or preferences. Happy automating!