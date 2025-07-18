# install.ps1 - Installs focusX for Git Bash users on Windows

Write-Host "🍅 Installing focusX..."

# Paths
$home = $env:USERPROFILE
$targetDir = "$home\focusX"
$bashrc = "$home\.bashrc"

# Create focusX directory if not exists
if (-Not (Test-Path $targetDir)) {
    New-Item -ItemType Directory -Force -Path $targetDir | Out-Null
}

# Download and copy the focusx script
$repoRawURL = "https://raw.githubusercontent.com/Justine01231/focusX/main/focusx"
$scriptDest = "$targetDir\focusx"

Invoke-WebRequest $repoRawURL -OutFile $scriptDest
Write-Host "✅ Script downloaded to $scriptDest"

# Append to .bashrc if not already sourced
$sourceLine = "source ~/focusX/focusx"
if (!(Test-Path $bashrc)) {
    New-Item -ItemType File -Path $bashrc | Out-Null
}

if (-not (Get-Content $bashrc | Select-String -Pattern [regex]::Escape($sourceLine))) {
    Add-Content $bas
