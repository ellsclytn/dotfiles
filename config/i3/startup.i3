# Autostart applications

exec --no-startup-id clipit
exec --no-startup-id feh --bg-fill "/$HOME/Pictures/wallpaper.png"
exec --no-startup-id nm-applet
exec --no-startup-id pamac-tray
exec --no-startup-id redshift
exec --no-startup-id syncthing -no-browser
exec --no-startup-id xbindkeys
exec --no-startup-id xfce4-power-manager

exec_always --no-startup-id picom -b
exec_always --no-startup-id ff-theme-util
exec_always --no-startup-id fix_xcursor
exec_always --no-startup-id polybar-launch
