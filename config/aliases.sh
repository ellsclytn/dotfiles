alias ar="asciinema"
alias dev="cd ~/Documents/Development"
alias dotfiles="cd ~/.dotfiles"
alias g="hub"
alias l='exa -hla --group-directories-first'
alias laralog="tail -f storage/logs/laravel.log"
alias typora="open -a typora"
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias zshsource="source ~/.zshrc"

function git() {
  hub $@
}

if [[ "$OSTYPE" == "linux-gnu" ]]; then
  alias pbcopy='xclip -selection clipboard'
  alias pbpaste='xclip -selection clipboard -o'
fi
