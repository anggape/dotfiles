if [[ "$(tty)" == "/dev/tty1" ]]; then
  export UWSM_SILENT_START=2
  exec uwsm start hyprland.desktop
else
  setterm -cursor on
fi
