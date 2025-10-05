if status is-login
    if test -z "$DISPLAY" -a -z "$INITIAL_SETUP" -a "$XDG_VTNR" = 1
        gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
        gsettings set org.gnome.desktop.interface gtk-theme 'Arc-Dark'
        exec startx -- -keeptty
    end
end
