Write-Host "Visų skriptų paleidimas" -ForegroundColor cyan
Write-Host "Running all the scripts" -ForegroundColor cyan
Write-Host ""

Write-Host "Naujo administratoriaus naudotojo pridėjimas" -ForegroundColor cyan
Write-Host "Adding a new Admin User" -ForegroundColor cyan
Write-Host ""
./CreateNewAdmin.ps1

Write-Host "Administratoriaus pašalinimas iš dabartinio" -ForegroundColor cyan
Write-Host "Removing Admin from current" -ForegroundColor cyan
Write-Host ""
./RemoveAdminFromCurrent.ps1