alias ansible-system="cd ~/.dotfiles; sudo -E ansible-playbook ansible/playbook.yml; cd -"
alias gpf='set_color -o yellow; echo "Force pushing"; set_color normal && sleep 3 && git push --force-with-lease --force-if-includes'
alias gpf!='set_color -o yellow; echo -n "Force pushing "; set_color -o red; echo "without lease"; set_color normal && sleep 3 && git push --force'
alias l='exa -hl --group-directories-first --git --time-style=long-iso'
alias la='l -a'
