# Setup fzf
# ---------
export FZF_DEFAULT_COMMAND='fd --type f --color=never --hidden'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d . --color=never --hidden'

set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_COMPLETE 2
