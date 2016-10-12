alias dev="cd ~/Documents/Development"
alias dotfiles="cd ~/.dotfiles"
alias laralog="tail -f storage/logs/laravel.log"
alias vim="nvim"
alias vi="nvim"
alias v="nvim"
alias vimconfig="vim ~/.config/nvim/init.vim"
alias zshconfig="vim ~/.zshrc"
alias zshsource="source ~/.zshrc"

function sub() {
  echo "Try vim!"
  subl -a $1
}

function git() {
  hub $@
}

