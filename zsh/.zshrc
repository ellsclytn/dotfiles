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

alias composer="php /usr/local/bin/composer.phar"
alias dev="cd ~/Documents/Development"
alias git="hub"
alias npmi="npm install --no-progress"
alias zshconfig="nano ~/.zshrc"
alias zshsource="source ~/.zshrc"


###
#   Environment Variables
###

# Homebrew cask install directory
export HOMEBREW_CASK_OPTS="--appdir=/Applications"


###
#   Autoload nvmrc
###

autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  fi
}
add-zsh-hook chpwd load-nvmrc
