# Setup fzf
# ---------
export FZF_DEFAULT_COMMAND='fd --type f --color=never --hidden'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d . --color=never --hidden'

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/share/fzf/key-bindings.zsh" 2> /dev/null

# Key bindings
# ------------
source "/usr/share/fzf/completion.zsh"
