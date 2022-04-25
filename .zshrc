alias ls='ls --almost-all'
alias df="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias poweroff='doas /sbin/poweroff'
alias reboot='doas /sbin/reboot'
alias pacman='doas /sbin/pacman'

# autocomplete
autoload -U compinit
compinit -i
