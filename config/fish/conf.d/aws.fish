function awsp
  set -gx AWS_PROFILE (aws configure list-profiles | fzf)
end
