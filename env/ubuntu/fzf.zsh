# Setup fzf
# ---------
export PATH="$PATH:/home/$USER/.fzf/bin"

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/$USER/.fzf/shell/key-bindings.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/$USER/.fzf/shell/completion.zsh"
