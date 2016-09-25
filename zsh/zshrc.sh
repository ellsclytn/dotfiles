# .envrc support
eval "$(direnv hook $SHELL)"

###
#   Init managers
###

# Initialise rbenv for homebrew install
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Init oh my zsh
source $ZSH/oh-my-zsh.sh

# Editor
export EDITOR="nvim"
