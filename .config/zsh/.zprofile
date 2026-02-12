export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

source "$XDG_CONFIG_HOME/user-dirs.dirs"
export                \
  XDG_DESKTOP_DIR     \
  XDG_DOWNLOAD_DIR    \
  XDG_TEMPLATES_DIR   \
  XDG_PUBLICSHARE_DIR \
  XDG_DOCUMENTS_DIR   \
  XDG_MUSIC_DIR       \
  XDG_PICTURES_DIR    \
  XDG_VIDEOS_DIR

export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"

if [[ "$(tty)" == "/dev/tty1" ]]; then
  export UWSM_SILENT_START=2
  exec uwsm start hyprland.desktop
else
  setterm -cursor on
fi
