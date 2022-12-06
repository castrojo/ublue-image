if test "$(id -u)" -gt "0" && test -d "$HOME"; then
    if test ! -e "$HOME"/.config/ublue/firstboot-done; then
    	mkdir -p "$HOME"/.config/ublue/
		/usr/bin/ublue-firstboot && touch "$HOME"/.config/ublue/firstboot-done
    fi
fi
