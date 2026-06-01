if status is-login
    if test -z "$WAYLAND_DISPLAY" -a -z "$INITIAL_SETUP" -a "$XDG_VTNR" = 1
        gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
        gsettings set org.gnome.desktop.interface font-name 'Ubuntu Nerd Font 11'
        gsettings set org.gnome.desktop.interface gtk-theme 'Arc-Dark'

        exec sway
    end
end
