FROM quay.io/fedora-ostree-desktops/silverblue:37
RUN rpm-ostree override remove firefox firefox-langpacks
RUN rpm-ostree install gnome-shell-extension-appindicator gnome-shell-extension-dash-to-dock distrobox
RUN rpm-ostree cleanup -m
RUN ostree container commit
