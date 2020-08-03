alias :q="clear"
alias ansible-system="cd ~/.dotfiles; sudo -E ansible-playbook ansible/playbook.yml; cd -"
alias ar="asciinema"
alias dev="cd ~/Code"
alias dotfiles="cd ~/.dotfiles"
alias du="dust"
alias f="zi"
alias g='git'
alias gpf='echo -e "\033[1;31m!!!Forcing!!!\033[0m" && sleep 3 && git push --force-with-lease'
alias gpf!='echo "!!!Forcing (NO LEASE)!!!" && sleep 3 && git push --force'
alias l='exa -hl --group-directories-first --git --time-style=long-iso'
alias la='l -a'
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias zshsource="source ~/.zshrc"
