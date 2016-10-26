# Lovingly borrowed from https://github.com/bkendzior/cowfiles

function cowsayfortune {
  NUMOFCOWS=`cowsay -l | tail -n +2 | wc -w`
  WHICHCOW=$((RANDOM%$NUMOFCOWS+1-3)) # Subtract number of excluded cows at end
  THISCOW=`cowsay -l | tail -n +2 | tr " " "\n" | grep -Ev "bong|sodomized|head-in" | sed -e 's/\ /\'$'\n/g' | sed $WHICHCOW'q;d'`

  fortune -s | cowsay -f $THISCOW
}

cowsayfortune
