# Copy/paste clipboard - functions identically to macOS
if status --is-interactive
  abbr --add --global pbcopy 'wl-copy'
  abbr --add --global pbpaste 'wl-paste'
end
