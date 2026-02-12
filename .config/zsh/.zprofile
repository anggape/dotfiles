export GNUPGHOME="$HOME/.config/gnupg"

if [[ "$(tty)" == "/dev/tty1" ]]; then
  echo "# TODO: start session"
else
  setterm -cursor on
fi
