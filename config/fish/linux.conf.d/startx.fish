if status is-login
    if test -z "$WAYLAND_DISPLAY" -a -z "$INITIAL_SETUP" -a "$XDG_VTNR" = 1
        gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
        gsettings set org.gnome.desktop.interface gtk-theme 'Arc-Dark'
        exec startx -- -keeptty
        # sleep 5
        # export XDG_CURRENT_DESKTOP=sway
        # XDG_CURRENT_DESKTOP=sway dbus-run-session sway
    end
end
