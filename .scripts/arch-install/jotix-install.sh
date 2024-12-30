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
