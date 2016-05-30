###
#   ZSH Setup
###

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git hub npm zsh-syntax-highlighting)
DEFAULT_USER=Ellis


###
#   Paths
###

# Brew/other, main path
export PATH="/usr/local/bin:$PATH"


###
#   Init managers
###

# Initialise rbenv for homebrew install
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Init oh my zsh
source $ZSH/oh-my-zsh.sh


###
#   Aliases
###

alias zshconfig="nano ~/.zshrc"
alias zshsource="source ~/.zshrc"
alias npmi="npm install --no-progress"
alias dev="cd ~/Documents/Development"
alias git="hub"
alias ll="ll -l"


###
#   Environment Variables
###

# Homebrew cask install directory
export HOMEBREW_CASK_OPTS="--appdir=/Applications"


###
#   TMUX
###

DISABLE_AUTO_TITLE="true"
