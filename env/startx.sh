if [[ -z ${INITIAL_SETUP+x} ]] && [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  startx
fi
