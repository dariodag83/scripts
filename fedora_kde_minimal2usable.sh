#!/bin/bash

# Install RPM Fusion repository (mandatory for increase the packet list)
dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# KDE (do not modify this section!!!) - very basic installation
dnf install -y fedora-workstation-repositories
dnf install -y @kde-desktop-environment 
systemctl set-default graphical.target 
dnf install -y vim htop lm_sensors
dnf install -y openssh openssh-server openssh-clients
dnf install -y make qt6ct
dnf install -y krdc
dnf install -y okular
dnf install -y cups foomatic foomatic-db foomatic-db-ppds plasma-print-manager
dnf install -y firefox firefox-langpacks
dnf install -y f2fs-tools jfsutils ocfs2-tools udftools xfsprogs
dnf install -y filelight
dnf install -y ark arj lzop unrar
dnf install -y kio-gdrive

# Laptop
#dnf install -y firmware-iwlwifi
#dnf install -y rfkill # abilita/disabilita i dispositivi wifi
dnf install -y acpi acpid

# Libreoffice
dnf install -y libreoffice libreoffice-langpack-it libreoffice-help-it

# gimp
dnf install -y gimp

# Ktita
dnf install -y krita

# Thunderbird
dnf install -y thunderbird

# Scanner
dnf install -y skanpage skanlite
dnf install -y tesseract tesseract-langpack-eng tesseract-langpack-fra tesseract-langpack-ita #OCR

# Kleopartra
dnf install -y kleopatra

# Chrome
dnf config-manager setopt google-chrome.enabled=1
dnf check-update
dnf install -y google-chrome-stable

# Onlyoffice
dnf install -y https://download.onlyoffice.com/repo/centos/main/noarch/onlyoffice-repo.noarch.rpm
dnf install -y onlyoffice-desktopeditors

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

# Sqlite browser
dnf install -y sqlitebrowser

# Ocatve (full)
dnf install -y octave*

# Paraview
dnf install -y paraview
