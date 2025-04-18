$Current = (whoami).split('\')[1]

Write-Host "Ar panaikinti $Current Admino teises? (Delete $Current Admin permissions?)" -ForegroundColor green
Write-Host "Y - Taip (Yes); Kita informacija - Ne (Other answer - No)" -ForegroundColor red
$Answer = Read-Host

if ($Answer -eq "Y") {
	Remove-LocalGroupMember -Group “Administrators” -Member $Current 
	Add-LocalGroupMember -Group "Users" -Member $Current
	Write-Host "Panaikinta $Current Admin teises (Removed $Current Admin privileges)" -ForegroundColor red
} else {
	Write-Host "Nenaikinta $Current Admin teises (Didn't remove $Current Admin privileges)" -ForegroundColor green
}
