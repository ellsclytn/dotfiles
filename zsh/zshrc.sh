###
#   Environment Variables
###

# Brew/other, main path
export PATH="/usr/local/bin:$PATH"

# .envrc support
eval "$(direnv hook $SHELL)"

# Homebrew cask install directory
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

###
#   Init managers
###

# Initialise rbenv for homebrew install
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Init oh my zsh
source $ZSH/oh-my-zsh.sh

