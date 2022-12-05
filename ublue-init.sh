#!/bin/bash

set -eu
[ "$UID" -eq 0 ] || { echo "This script must be run as root."; exit 1;} 

/usr/bin/flatpak remote-modify --enable flathub
/usr/bin/flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
/usr/bin/flatpak remote-delete fedora --force
/usr/bin/flatpak install --assumeyes --noninteractive --or-update \\
org.gnome.DejaDup \
org.gnome.Rhythmbox3 \
org.gnome.Shotwell \
org.fedoraproject.MediaWriter \
org.gnome.Calculator \
org.gnome.Calendar \
org.gnome.Characters \
org.gnome.Connections \
org.gnome.Contacts \
org.gnome.Evince \
org.gnome.Firmware \
org.gnome.Logs \
org.gnome.Maps \
org.gnome.NautilusPreviewer \
org.gnome.TextEditor \
org.gnome.Weather \
org.gnome.baobab \
org.gnome.clocks \
org.gnome.eog \
org.gnome.font-viewer \
org.gustavoperedo.FontDownloader \
org.libreoffice.LibreOffice \
org.mozilla.firefox \
org.mozilla.Thunderbird \
org.freedesktop.Platform.ffmpeg-full/x86_64/21.08 \
org.freedesktop.Platform.ffmpeg-full/x86_64/22.08 \
org.freedesktop.Platform.GStreamer.gstreamer-vaapi/x86_64/22.08 \
io.github.celluloid_player.Celluloid \
com.github.tchx84.Flatseal \
com.mattjakeman.ExtensionManager \

## Enable this later

# Extensions
#dconf write /org/gnome/shell/disable-extension-version-validation "true" #yolo
#dconf write /org/gnome/shell/disable-user-extensions "false"

#gnome-extensions enable appindicatorsupport@rgcjonas.gmail.com
#gnome-extensions disable background-logo@fedorahosted.org
#gnome-extensions enable dash-to-dock@micxgx.gmail.com

# Set Favorites
#dconf write /org/gnome/shell/favorite-apps "['org.mozilla.firefox.desktop', 'org.mozilla.Thunderbird.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Rhythmbox3.desktop', 'org.libreoffice.LibreOffice.writer.desktop', 'org.gnome.Software.desktop', 'yelp.desktop']"

#distrobox-create -Y -i public.ecr.aws/ubuntu/ubuntu:22.04 -n ubuntu-toolbox-22
#distrobox-create -Y -i registry.fedoraproject.org/fedora-toolbox:37 --name fedora-toolbox-37
#/usr/local/bin/distrobox-terminal-profile.sh -n ubuntu-toolbox-22 -c ubuntu-toolbox-22 -s "<Primary><Alt>u" 
#/usr/local/bin/distrobox-terminal-profile.sh -n fedora-toolbox-37 -c fedora-toolbox-37 -s "<Primary><Alt>f"