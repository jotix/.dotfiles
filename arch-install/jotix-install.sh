#!/usr/bin/env bash

DESKTOP=""

while [[ $DESKTOP != "plasma" && $DESKTOP != "gnome" ]]
do
  read -p "Wich Desktop Enviroment install? (plasma/gnome): " DESKTOP
done

if [[ DESKTOP == "plasma" ]]; then
  sudo pacman -S --noconfirm --needed plasma kde-applications kitty system-config-printer tesseract-data-eng
  sudo systemctl enable sddm
else
  sudo pacman -S --noconfirm --needed gnome gnome-extra gnome-browser-connector
fi

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
