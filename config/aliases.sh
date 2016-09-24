alias dev="cd ~/Documents/Development"
alias git="hub"
alias laralog="tail -f storage/logs/laravel.log"
alias nvim="nvim -u ~/.vimrc"
alias vim="nvim -u ~/.vimrc"
alias vi="nvim -u ~/.vimrc"
alias v="nvim -u ~/.vimrc"
alias vimconfig="vim ~/.config/nvim/init.vim"
alias zshconfig="vim ~/.zshrc"
alias zshsource="source ~/.zshrc"

function sub() {
  echo "Try vim!"
  subl -a $1
}

