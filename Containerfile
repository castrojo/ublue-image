FROM ghcr.io/cgwalters/fedora-silverblue:37
# See https://pagure.io/releng/issue/11047 for final location

COPY etc /etc

COPY ublue-init.sh /usr/local/bin
COPY distrobox-terminal-profile.sh /usr/local/bin
COPY ublue-reset.sh /usr/local/bin

RUN rpm-ostree override remove firefox firefox-langpacks && \
    rpm-ostree install gnome-shell-extension-appindicator gnome-shell-extension-dash-to-dock distrobox gnome-tweaks && \
    rpm-ostree cleanup -m && \
    sed -i 's/#AutomaticUpdatePolicy.*/AutomaticUpdatePolicy=stage/' /etc/rpm-ostreed.conf && \
    systemctl enable rpm-ostreed-automatic.timer && \
    systemctl enable flatpak-automatic.timer && \
    ostree container commit
