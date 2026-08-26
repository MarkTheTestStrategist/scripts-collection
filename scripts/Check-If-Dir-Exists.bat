echo "Add Dev folder to C:\ if it doesn't exist"
path C:\
if exist C:\Dev\NUL echo "Folder already exists"
if not exist C:\Dev\Nul echo "Folder does not exist"
if not exist "C:\Dev" mkdir C:\Dev
cd c:\Dev