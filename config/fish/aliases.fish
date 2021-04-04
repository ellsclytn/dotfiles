alias :q="clear"
alias ansible-system="cd ~/.dotfiles; sudo -E ansible-playbook ansible/playbook.yml; cd -"
alias ar="asciinema"
alias dev="cd ~/Code"
alias dotfiles="cd ~/.dotfiles"
alias du="dust"
alias f="zi"
alias g='git'
alias gpf='set_color -o yellow; echo "Force pushing"; set_color normal && sleep 3 && git push --force-with-lease'
alias gpf!='set_color -o yellow; echo -n "Force pushing "; set_color -o red; echo "without lease"; set_color normal && sleep 3 && git push --force'
alias l='exa -hl --group-directories-first --git --time-style=long-iso'
alias la='l -a'
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
