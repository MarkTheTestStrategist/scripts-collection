$sqlServer = "location of databases. e.g. Laptop name"

# List of databases to be kept
$dbsToKeep = @(
    "database name 1", 
    "database name 2"
    # ... (your other databases)
)

# Get the list of databases
$databases = Get-SqlDatabase -ServerInstance $sqlServer

foreach ($db in $databases) {
    # Check if the current database does not exist in the list of databases to be kept
    if (-not ($dbsToKeep -contains $db.Name)) {
        # Database not found in the list, delete it
        Invoke-Sqlcmd -ServerInstance $sqlServer -Query "DROP DATABASE [$($db.Name)]"
        Write-Host "Database $($db.Name) deleted."
    } else {
        # Database found in the list, continue to the next one
        Write-Host "Database $($db.Name) found in keep list."
    }
}