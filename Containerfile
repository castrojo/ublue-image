FROM ghcr.io/cgwalters/fedora-silverblue:37
# See https://pagure.io/releng/issue/11047 for final location

RUN rpm-ostree override remove firefox firefox-langpacks
RUN rpm-ostree install gnome-shell-extension-appindicator gnome-shell-extension-dash-to-dock distrobox
RUN rpm-ostree cleanup -m
RUN ostree container commit
