#!/bin/bash

set -eufo pipefail

fc-cache

gsettings set org.gnome.desktop.interface clock-show-seconds false
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface enable-hot-corners false
gsettings set org.gnome.desktop.interface gtk-theme "Materia-dark-compact"
gsettings set org.gnome.desktop.interface icon-theme "Numix-Circle"

gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false
profile=$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F \' '{print $2}')
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/ audible-bell false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/ use-theme-colors true

gsettings set org.gnome.shell enabled-extensions "['TopIcons@phocean.net', 'sound-output-device-chooser@kgshank.net', 'user-theme@gnome-shell-extensions.gcampax.github.com', 'dash-to-dock@micxgx.gmail.com']"
gsettings set org.gnome.shell favorite-apps "['chromium.desktop', 'firefox.desktop', 'org.gnome.Nautilus.desktop', 'visual-studio-code.desktop', 'slack.desktop', 'org.gnome.Terminal.desktop', 'discord.desktop']"

gsettings set org.gnome.shell.extensions.dash-to-dock apply-custom-theme false
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 48
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide-mode FOCUS_APPLICATION_WINDOWS
gsettings set org.gnome.shell.extensions.dash-to-dock multi-monitor true

gsettings set org.gnome.shell.extensions.topicons tray-order 1
gsettings set org.gnome.shell.extensions.topicons tray-pos right

gsettings set org.gnome.shell.extensions.user-theme name Materia-dark-compact

dconf write /org/gnome/shell/extensions/sound-output-device-chooser/hide-menu-icons false
dconf write /org/gnome/shell/extensions/sound-output-device-chooser/hide-on-single-device false
dconf write /org/gnome/shell/extensions/sound-output-device-chooser/icon-theme "'monochrome'"
dconf write /org/gnome/shell/extensions/sound-output-device-chooser/show-input-devices true
dconf write /org/gnome/shell/extensions/sound-output-device-chooser/show-input-slider false
dconf write /org/gnome/shell/extensions/sound-output-device-chooser/show-profiles true
