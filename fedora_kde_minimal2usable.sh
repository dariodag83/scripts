#!/bin/bash

# Install RPM Fusion repository (mandatory)
dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# KDE (do not modify this section!!!)
dnf install fedora-workstation-repositories
dnf install -y @kde-plasma-desktop
dnf install -y firmware-linux firmware-linux-nonfree firmware-misc-nonfree
dnf install -y vim
dnf install -y openssh-client openssh-server
dnf install -y make qt6ct
dnf install -y krdc
dnf install -y okular
dnf install -y cups foomatic-db-compressed-ppds print-manager
dnf install -y firefox firefox-langpacks
dnf install -y f2fs-tools jfsutils ocfs2-tools udftools xfsprogs
dnf install -y filelight
dnf install -y ark arj lzop rar unrar
dnf install -y kio-gdrive
dnf install -y power-profiles-daemon

# Ldnfop
#dnf install -y firmware-iwlwifi
#dnf install -y rfkill # abilita/disabilita i dispositivi wifi
dnf install -y acpi acpid

# Libreoffice
dnf install -y libreoffice libreoffice-langpack-it libreoffice-help-it

# Thunderbird
dnf install -y thunderbird

# Scanner
dnf install -y skanpage skanlite
dnf install -y tesseract-ocr tesseract-ocr-eng tesseract-ocr-fra tesseract-ocr-ita #OCR

# Kleopartra
dnf install -y kleopatra

# Chrome
dnf config-manager setopt google-chrome.enabled=1
dnf check-update
dnf install -y google-chrome-stable

# Visual Studio Code
rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
dnf check-update
dnf install -y code

# Filezilla
dnf install -y filezilla

# Rust
dnf install -y rustup
rustup-init -y

# Playonlinux
dnf install -y playonlinux

# Paraview
dnf install -y paraview

# Onlyoffice
dnf install -y https://download.onlyoffice.com/repo/centos/main/noarch/onlyoffice-repo.noarch.rpm
dnf install -y onlyoffice-desktopeditors
