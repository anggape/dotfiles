export ZSH=$HOME/.config/zsh/ohmyzsh
export ANDROID_HOME="${HOME}/.dev/android"
export JAVA_HOME="${HOME}/.dev/jdk"
export PATH="${HOME}/.bin/dotnet:${ANDROID_HOME}/cmdline-tools/latest/bin:${JAVA_HOME}/bin:${PATH}"

ZSH_THEME="avit"

zstyle ':omz:update' mode disabled
COMPLETION_WAITING_DOTS="true"
ZSH_CUSTOM=$HOME/.config/zsh

plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# aliases
alias ls='exa --icons --all --git'
alias cd='z'
alias cat='bat'
alias df="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias poweroff='doas /sbin/poweroff'
alias reboot='doas /sbin/reboot'
alias pacman='doas /sbin/pacman'
alias c='clear'

# history
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

# zoxide
eval "$(zoxide init zsh)"
