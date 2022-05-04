if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
    figlet -c welcome ${USER}
    exec startx
fi
