New-Item -ItemType Directory -Force -Path C:\users\$env:username\Documents\TheoWAF\class6.5\GCP\Terraform
New-Item -ItemType Directory -Force -Path C:\users\$env:username\Documents\TheoWAF\class6.5\GCP\Notes
New-Item -ItemType Directory -Force -Path C:\users\$env:username\Documents\TheoWAF\class6.5\GCP\Homework
New-Item -ItemType Directory -Force -Path C:\users\$env:username\Documents\TheoWAF\class6.5\GCP\Classes
New-Item -ItemType Directory -Force -Path C:\users\$env:username\Documents\TheoWAF\class7\AWS\Terraform
New-Item -ItemType Directory -Force -Path C:\users\$env:username\Documents\TheoWAF\class7\AWS\Notes
New-Item -ItemType Directory -Force -Path C:\users\$env:username\Documents\TheoWAF\class7\AWS\Homework
New-Item -ItemType Directory -Force -Path C:\users\$env:username\Documents\TheoWAF\class7\AWS\Classes

Start-Transcript -Path "C:\users\$env:username\Documents\TheoWAF\Logs\chocoFix$(Get-Date -UFormat "%Y-%m-%d@%Hh-%Mm-%Ss").log"
Start-Transcript -Path "Logs\chocoFix$(Get-Date -UFormat "%Y-%m-%d@%Hh-%Mm-%Ss").log" 
Set-ExecutionPolicy -Scope Process -ExecutionPolicy unrestricted
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco list

echo "all set!"
Stop-Transcript