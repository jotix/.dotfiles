#!/usr/bin/env bash

### install ssh key
/mnt/jtx-ssd/jotix/jotix-install.sh

### powerline-go
go install github.com/justjanne/powerline-go@latest

### gnome extension manager
flatpak install flathub com.mattjakeman.ExtensionManager
