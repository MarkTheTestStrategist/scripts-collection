## Open Visual Studio Project

This will open Visual Studio and the project solution you specify:

``` BAT
@echo off

start "" "C:\XXX\XXX\XXX\devenv.exe" "C:\testProject\Test.sln"
```

**Example:**

``` BAT
@echo off

start "" "C:\Program Files\Microsoft Visual Studio\2022\Professional\Common7\IDE\devenv.exe" "C:\Projects\TestProject\Test.sln"
```

Save as `OpenTestProject.bat` and double-click it to launch the solution in Visual Studio or add it to your windows startup folder to run whenever you start your machine.