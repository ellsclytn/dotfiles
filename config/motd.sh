# Lovingly borrowed from https://github.com/bkendzior/cowfiles

function cowsayfortune {
  NUMOFCOWS=`cowsay -l | tail -n +2 | wc -w`
  WHICHCOW=$((RANDOM%$NUMOFCOWS+1))
  THISCOW=`cowsay -l | tail -n +2 | sed -e 's/\ /\'$'\n/g' | sed $WHICHCOW'q;d'`

  fortune -s | cowsay -f $THISCOW -W 100
}

cowsayfortune
