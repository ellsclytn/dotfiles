#!/bin/bash
# cowsayfortune -- inspire your day with a safe-for-work wise character
#
# Lovingly based on https://github.com/bkendzior/cowfiles

NSFW_REGEX="bong|head-in|sodomized|telebears"

sfw_cows() {
  cowsay -l | tail -n+2 | tr ' ' '\n'
}

random_number() {
  echo "$(( RANDOM % $1 + 1))"
}

random_sfw_cow() {
  num_cows="$(sfw_cows | wc -l)"
  selected_cow_number="$(random_number $num_cows)"
  sfw_cows | sed -n "${selected_cow_number}p"
}

fortune -s | cowsay -f "$(random_sfw_cow)"

