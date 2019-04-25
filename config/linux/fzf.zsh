# Setup fzf
# ---------
if [[ ! "$PATH" == */home/$USER/.fzf/bin* ]]; then
  export PATH="$PATH:/home/$USER/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/share/fzf/key-bindings.zsh" 2> /dev/null

# Key bindings
# ------------
source "/usr/share/fzf/completion.zsh"
