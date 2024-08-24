#!/bin/bash

: '
Installation list :
    chrome
    opera
    thunderbird
    slack
    teams
    discord
    vscode
    docker
    obsidian
    spotify
    dbeaver
    mysql workbench
    onlyoffice
    vlc player
    libreoffice
    gimp
    nemo
    gparted
    syncthing
    fcitx
    gpaste
    gdebi installer
    gnome extensions
    gnome tweaks
'

# Install sudo and Update and Upgrade System 
apt-get update && apt-get install -y sudo && sudo apt-get upgrade -y

# Install Software from Default Repositories
sudo apt-get install -y thunderbird vlc libreoffice gparted nemo gimp gnome-tweaks

# Add Repositories for Other Software
sudo add-apt-repository ppa:remmina-ppa-team/remmina-next -y
sudo add-apt-repository ppa:samoilov-lex/aftl-mfp-daily -y
sudo add-apt-repository ppa:embrosyn/cinnamon -y
sudo add-apt-repository ppa:graphics-drivers/ppa -y
sudo add-apt-repository ppa:libreoffice/ppa -y
sudo add-apt-repository ppa:mozillateam/ppa -y
sudo add-apt-repository ppa:numix/ppa -y
sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
sudo add-apt-repository ppa:phoerious/keepassxc -y
sudo add-apt-repository ppa:team-xbmc/ppa -y
sudo add-apt-repository ppa:transmissionbt/ppa -y
sudo add-apt-repository ppa:ubuntuhandbook1/apps -y
sudo add-apt-repository ppa:videolan/master-daily -y
sudo add-apt-repository ppa:yannubuntu/boot-repair -y
sudo add-apt-repository ppa:zeezerepo/vlc -y

# Install Additional Software
sudo apt-get install -y remmina cinnamon emacs flatpak gdebi gedit gimp git gnome-shell-extension-prefs gnome-tweak-tool google-chrome-stable kdenlive keepassxc libappindicator1 libasound2-plugins libcanberra-gtk-module libgconf2-4 libglu1-mesa libgtk-3-0 libnotify-bin libnss3 libx11-xcb1 libxcomposite1 libxdamage1 libxrandr2 libxtst6 nautilus-dropbox numix-gtk-theme numix-icon-theme-faenza numix-icon-theme-square obs-studio opera-stable pepperflashplugin-nonfree python3 python3-distupgrade python3-update-manager r-base r-cran-rjava rdesktop rhythmbox-plugin-tray-icon skypeforlinux slack snapd spotify-client steam telegram-desktop ttf-mscorefonts-installer ubuntu-restricted-extras unity-tweak-tool vlc virtualbox wget xorg youtube-dl zathura

# Download and Install Software Not Available in Repositories
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb || sudo apt-get install -fy

wget https://ftp.opera.com/pub/opera/desktop/75.0.3969.243/linux/opera-stable_75.0.3969.243_amd64.deb
sudo dpkg -i opera-stable_75.0.3969.243_amd64.deb || sudo apt-get install -fy

wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.23.0-amd64.deb
sudo dpkg -i slack-desktop-4.23.0-amd64.deb || sudo apt-get install -fy

wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.5.00.13653-1_amd64.deb
sudo dpkg -i teams_1.5.00.13653-1_amd64.deb || sudo apt-get install -fy

wget https://discord.com/api/download?platform=linux&format=deb
sudo dpkg -i discord*.deb || sudo apt-get install -fy

wget https://go.microsoft.com/fwlink/?LinkID=760868
sudo dpkg -i code_*.deb || sudo apt-get install -fy

wget https://download.docker.com/linux/ubuntu/dists/$(lsb_release -cs)/pool/stable/amd64/docker-ce_20.10.7~3-0~ubuntu-$(lsb_release -cs)_amd64.deb
sudo dpkg -i docker-ce_20.10.7~3-0~ubuntu-$(lsb_release -cs)_amd64.deb || sudo apt-get install -fy

wget https://github.com/obsidianmd/obsidian-releases/releases/download/v0.12.15/obsidian_0.12.15_amd64.deb
sudo dpkg -i obsidian_0.12.15_amd64.deb || sudo apt-get install -fy

wget https://repository.spotify.com/pool/non-free/s/spotify-client/spotify-client_1.1.84.716.gc7f964cc_amd64.deb
sudo dpkg -i spotify-client_1.1.84.716.gc7f964cc_amd64.deb || sudo apt-get install -fy

wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
sudo dpkg -i dbeaver-ce_latest_amd64.deb || sudo apt-get install -fy

wget https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community_8.0.23-1ubuntu20.04_amd64.deb
sudo dpkg -i mysql-workbench-community_8.0.23-1ubuntu20.04_amd64.deb || sudo apt-get install -fy

# Install OnlyOffice Desktop Editors
sudo apt-get install -y onlyoffice-desktopeditors

# Install GIMP
sudo apt-get install -y gimp

# Install Nemo File Manager
sudo apt-get install -y nemo

# Install GParted
sudo apt-get install -y gparted

# Install Syncthing
sudo apt-get install -y syncthing

# Install Fcitx Input Method Framework
sudo apt-get install -y fcitx

# Install GPaste Clipboard Manager
sudo apt-get install -y gpaste

# Install GDebi Installer
sudo apt-get install -y gdebi

# Install GNOME Extensions and Tweaks
sudo apt-get install -y gnome-shell-extension-prefs gnome-tweak-tool

echo "Installation Complete!"
