#!/bin/bash

# KDE (do not modify this section!!!)
apt install -y kde-plasma-desktop
apt install -y firmware-linux firmware-linux-nonfree firmware-misc-nonfree
apt install -y vim htop lm-sensors
apt install -y openssh-client openssh-server
apt install -y make qt6ct
apt install -y krdc
apt install -y okular
apt install -y cups foomatic-db-compressed-ppds print-manager
apt install -y firefox-esr-l10n-it firefox-esr
apt install -y f2fs-tools jfsutils ocfs2-tools reiserfsprogs udftools xfsprogs
apt install -y filelight
apt install -y ark arj lzop rar unrar
apt install -y kio-gdrive
apt install -y power-profiles-daemon

# Laptop
#apt install -y firmware-iwlwifi
#apt install -y rfkill # abilita/disabilita i dispositivi wifi
apt install -y acpi acpid

# Libreoffice
apt install -y libreoffice libreoffice-help-it libreoffice-l10n-it libreoffice-qt6 libreoffice-plasma libreoffice-style-breeze

# Thunderbird
apt install -y thunderbird

# Scanner
apt install -y skanpage skanlite
apt install -y tesseract-ocr tesseract-ocr-eng tesseract-ocr-fra tesseract-ocr-ita #OCR

# Kleopartra
apt install -y kleopatra

# Chrome
wget -O chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install -y ./chrome.deb
rm -rf chrome.deb

# Visual Studio Code
wget -O vscode.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
apt install -y ./vscode.deb
rm -rf vscode.deb

# Filezilla
apt install -y filezilla

# Rust
apt install -y rustup
rustup default stable

# Playonlinux
apt install -y playonlinux

# Paraview
apt install -y paraview

# Onlyoffice
mkdir -p -m 700 ~/.gnupg
gpg --no-default-keyring --keyring gnupg-ring:/tmp/onlyoffice.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys CB2DE8E5
chmod 644 /tmp/onlyoffice.gpg
chown root:root /tmp/onlyoffice.gpg
mv /tmp/onlyoffice.gpg /usr/share/keyrings/onlyoffice.gpg
echo 'deb [signed-by=/usr/share/keyrings/onlyoffice.gpg] https://download.onlyoffice.com/repo/debian squeeze main' | sudo tee -a /etc/apt/sources.list.d/onlyoffice.list
apt update
apt install -y onlyoffice-desktopeditors onlyoffice-desktopeditors-help



