# Autostart applications

exec --no-startup-id feh --bg-fill "/$HOME/Pictures/wallpaper.png"
exec --no-startup-id nm-applet
exec --no-startup-id redshift
exec --no-startup-id xss-lock -l /home/ellis/bin/lock &

### REQUIRES_PICOM
exec_always --no-startup-id picom -b
### REQUIRES_PICOM
