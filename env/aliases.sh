alias :q="clear"
alias ar="asciinema"
alias dev="cd ~/Code"
alias dotfiles="cd ~/.dotfiles"
alias g='git'
alias gpf='echo -e "\033[1;31m!!!Forcing!!!\033[0m" && sleep 3 && git push --force-with-lease'
alias gpf!='echo "!!!Forcing (NO LEASE)!!!" && sleep 3 && git push --force'
# Until exa is fix https://github.com/ogham/exa/issues/517
# alias l='exa -hl --group-directories-first --time-style=long-iso'
alias l='lsd -l --icon never --group-dirs first --date relative -F'
alias la='l -A'
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias zshsource="source ~/.zshrc"
