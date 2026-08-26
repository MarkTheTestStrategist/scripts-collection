# How to open Powershell & change directory

1️⃣ Create a new `.ps1` file & title it something like `OpenMySolutionName.ps1`

2️⃣ Add this code:

``` Powershell
Set-ExecutionPolicy RemoteSignded -y
Start-Process PowerShell - ArgumentList "-NoExit", "-Command Set-Location -Path 'C:\Dev\<path name>'"
```

This script uses the Start-Process cmdlet to launch a new instance of PowerShell. 

The ArgumentList parameter is used to pass arguments to the new PowerShell process:

- -NoExit prevents the new PowerShell window from closing immediately after executing the command
- -Command Set-Location -Path 'C:\Dev\<path name>` changes the working directory to C:\Dev\<path name>

To run the script, right-click the .ps1 file and select "Run with PowerShell", or open PowerShell, navigate to the directory where you saved the script, and type .\OpenMySolutionName.ps1

---

## You can also add this into a Batch File

If you prefer to launch the PowerShell script from a batch file, create a new .bat file and add the following:

``` BAT
@echo off

powershell.exe -ExecutionPolicy Bypass -File "C:\Scripts\OpenMySolutionName.ps1"
```

Replace `C:\Scripts\OpenMySolutionName.ps1` with the full path to your PowerShell script.

This allows you to double-click the batch file to open PowerShell and automatically change to the required directory.

Alternatively, if you do not want a separate .ps1 file, you can place the PowerShell command directly in the batch file:

``` BAT
@echo off

powershell.exe -NoExit -Command "Set-Location -Path 'C:\Dev\<path name>'"

```

This will open a new PowerShell window and leave it open in the specified directory, ready for use.

Tip: You can pin the batch file to your Start Menu, Taskbar, or create a Desktop shortcut for quick access to commonly used development folders.