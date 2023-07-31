# Copy/paste clipboard - functions identically to macOS
if status --is-interactive
  abbr --add --global pbcopy 'xclip -selection clipboard'
  abbr --add --global pbpaste 'xclip -selection clipboard -o'
end
