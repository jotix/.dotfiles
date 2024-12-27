#!/usr/bin/env bash

### install ssh key
/mnt/jtx-ssd/jotix/jotix-install.sh

### install arch-config repo
git clone git@github.com:jotix/arch-config $HOME/arch-config

### powerline-go
go install github.com/justjanne/powerline-go@latest

### gnome extension manager
flatpak install flathub com.mattjakeman.ExtensionManager
