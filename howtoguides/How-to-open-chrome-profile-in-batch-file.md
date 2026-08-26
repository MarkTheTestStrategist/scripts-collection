# Open Chrome as a specific user

Example One:
```batch
start chrome.exe --profile-directory="Profile1"
```

Or,

```batch
start "Chrome" "C:\Program Files\Google\Chrome\Application\chrome.exe" --profile-directory=Default
```

The chrome profile folder can be found here:- 

```batch
"C:\Users\<username>\AppData\Local\Google\Chrome\User Data"
```

⚠️ Don't forget to change the username where applicable