# Kuriamas naujo admin account
echo "Naujo Admino vardas (Username):"
$Username = Read-Host
echo "Slaptazodis (Password):"
$Password = Read-Host -AsSecureString
echo "Pakartokit slaptazodi (repeat password):"
$Password2 = Read-Host -AsSecureString

# Tikrinam ar tokios patys
$Plain1 = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($Password))
$Plain2 = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($Password2))

if ($Plain1 -cne $Plain2)
{
	Write-Host "Slaptazodis ne gerai pakartojat (Incorect repeat password)" -ForegroundColor red
	return
}

# Kurimas naujas Adminas
$params = @{
	Name        = $Username
	Password    = $Password
}
New-LocalUser @params
Add-LocalGroupMember -Group "Administrators" -Member $Username

Write-Host "Pavyko sukurti $Username (Succesfully created $Username)" -ForegroundColor green
