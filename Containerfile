FROM ghcr.io/cgwalters/fedora-silverblue:37
# See https://pagure.io/releng/issue/11047 for final location

COPY etc /etc

RUN rpm-ostree override remove firefox firefox-langpacks && \
    rpm-ostree install gnome-shell-extension-appindicator gnome-shell-extension-dash-to-dock distrobox && \
    rpm-ostree cleanup -m && \
    sed -i 's/#AutomaticUpdatePolicy.*/AutomaticUpdatePolicy=stage/' /etc/rpm-ostreed.conf && \
    systemctl enable rpm-ostreed-automatic.timer && \
    systemctl enable flatpak-automatic.timer && \
    gnome-extensions enable appindicatorsupport@rgcjonas.gmail.com && \
    gnome-extensions disable background-logo@fedorahosted.org && \
    gnome-extensions enable dash-to-dock@micxgx.gmail.com && \
    ostree container commit
