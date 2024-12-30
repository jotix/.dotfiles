#!/usr/bin/env bash

dconf write /org/gnome/nautilus/icon-view/default-zoom-level "'small'"
dconf write /org/gnome/settings-daemon/plugins/power/sleep-inactive-ac-type "'nothing'"
dconf write /org/gnome/desktop/interface/color-scheme "'prefer-dark'"
dconf write /org/gnome/desktop/session/idle-delay 'uint32 480'
dconf write /org/gnome/desktop/screensaver/lock-enabled false
dconf write /org/gnome/desktop/notifications/show-banners false
dconf write /org/gnome/desktop/wm/preferences/button-layout "'appmenu:minimize,maximize,close'"
dconf write /org/gnome/Console/last-window-size '(1200, 900)'
dconf write /org/gnome/shell/favorite-apps "['com.google.Chrome.desktop', \
'org.gnome.Nautilus.desktop', 'dev.zed.Zed.desktop', 'org.gnome.Extensions.desktop', \
'org.gnome.Console.desktop', 'com.valvesoftware.Steam.desktop', 'org.gnome.Settings.desktop', \
'com.mattjakeman.ExtensionManager.desktop']"
