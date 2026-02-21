if [[ "$(tty)" == "/dev/tty1" ]]; then
  echo "# TODO: start session"
  setterm -cursor on
else
  setterm -cursor on
fi
