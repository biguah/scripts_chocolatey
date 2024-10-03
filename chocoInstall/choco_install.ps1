Start-Transcript -Path "Logs\chocoInstall$(Get-Date -UFormat "%Y-%m-%d@%Hh-%Mm-%Ss").log" 
Set-ExecutionPolicy -Scope Process -ExecutionPolicy unrestricted
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install -y googlechrome brave 7zip zoom sysinternals vim vscode vlc chocolateygui chocolatey-core.extension choco-upgrade-all-at-startup notepadplusplus telegram discord wireguard ublockorigin-chrome curl wget anki --params "/CreateDesktopIcon" git anaconda3 python3 terraform terragrunt opentofu kubernetes-cli k9s kubernetes-helm kubernetes-kompose minikube docker-cli docker-desktop docker-compose awscli azure-cli gcloudsdk --ignore-checksums openssl openjdk zap wireshark datadog-agent grafana prometheus burp-suite-free-edition nmap

# choco install -y notion obsidian nessus-agent

echo "all set!"
Stop-Transcript