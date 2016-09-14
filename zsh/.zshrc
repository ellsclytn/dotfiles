###
#   ZSH Setup
###

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="muse"
plugins=(git hub npm zsh-syntax-highlighting)
DEFAULT_USER=Ellis

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

###
#   Aliases
###

alias dev="cd ~/Documents/Development"
alias git="hub"
alias laralog="tail -f storage/logs/laravel.log"
alias vim="nvim"
alias vimconfig="vim ~/.config/nvim/init.vim"
alias zshconfig="vim ~/.zshrc"
alias zshsource="source ~/.zshrc"

function sub() {
  echo "Try vim!"
  subl -a $1
}
