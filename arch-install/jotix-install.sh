#!/usr/bin/env bash

### powerline-go
go install github.com/justjanne/powerline-go@latest

### gnome extension manager
flatpak install flathub com.mattjakeman.ExtensionManager

### steam
flatpak install com.valvesoftware.Steam

### minion
flatpak install gg.minion.Minion

### filesystems override
flatpak override --filesystem=/mnt/jtx-ssd com.valvesoftware.Steam --user
flatpak override --filesystem=/mnt/jtx-ssd gg.minion.Minion --user
flatpak override --filesystem=/home/jotix gg.minion.Minion --user

if [[ -b "/dev/disk/by-label/jtx-nvme" ]]; then
    flatpak override --filesystem=/mnt/jtx-nvme com.valvesoftware.Steam --user
    flatpak override --filesystem=/mnt/jtx-nvme gg.minion.Minion --user
fi

### google chrome from AUR
cd $HOME
mkdir -p workspace
cd workspace
git clone https://aur.archlinux.org/google-chrome.git
cd google-chrome
makepkg -s
sudo pacman -U *.zst
cd $HOME
