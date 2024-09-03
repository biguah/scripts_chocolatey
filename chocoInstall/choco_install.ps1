Start-Transcript -Path "Logs\chocoInstall$(Get-Date -UFormat "%Y-%m-%d@%Hh-%Mm-%Ss").log" 
Set-ExecutionPolicy -Scope Process -ExecutionPolicy unrestricted
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install -y googlechrome
choco install -y brave
choco install -y 7zip
Choco install -y zoom
Choco install -y vscode
choco install -y vlc
choco install -y chocolateygui
Choco install -y chocolatey-core.extension
choco install -y choco-upgrade-all-at-startup
choco install -y notepadplusplus
choco install -y telegram
choco install -y discord
choco install -y wireguard
choco install -y ublockorigin-chrome
choco install -y anki --params "/CreateDesktopIcon"
# choco install -y notion
# choco install -y obsidian

Choco install -y git
choco install -y python
Choco install -y python3
Choco install -y terraform
Choco install -y terragrunt
Choco install -y opentofu
Choco install -y kubernetes-cli
choco install -y k9s
Choco install -y kubernetes-helm
choco install -y minikube
choco install -y docker-cli
choco install -y docker-desktop
choco install -y docker-compose
Choco install -y awscli
Choco install -y azure-cli
choco install -y gcloudsdk --ignore-checksums
choco install -y openssl
Choco install -y openjdk
Choco install -y zap
choco install -y wireshark
# choco install -y nessus-agent
choco install -y anaconda3
choco install -y datadog-agent
choco install -y grafana
choco install -y prometheus


echo "all set!"
Stop-Transcript