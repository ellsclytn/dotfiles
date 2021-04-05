# Sensible image viewer
if status --is-interactive
  abbr --add --global img "feh --scale-down --image-bg black --sort name --no-menus --conversion-timeout 1 --force-aliasing --title '[%u/%l] %n (%wx%h)'"
end
