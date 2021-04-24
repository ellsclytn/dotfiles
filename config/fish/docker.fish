if status --is-interactive
  abbr --add --global c "docker-compose"
  abbr --add --global cup "docker-compose up"
  abbr --add --global cupd "docker-compose up -d"
  abbr --add --global drmi "docker images -a | fzf --header-lines=1 -m | awk \"{print \$3}\" | xargs docker rmi"
  abbr --add --global drmc "docker ps -a | fzf --header-lines=1 -m | awk \"{print \$1}\" | xargs docker rm -v"
end
