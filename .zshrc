export ZSH=$HOME/.config/zsh/ohmyzsh

ZSH_THEME="avit"

zstyle ':omz:update' mode disabled # disable automatic updates
COMPLETION_WAITING_DOTS="true"
ZSH_CUSTOM=$HOME/.config/zsh

plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias ls='exa --icons --all --git'
alias cd='z'
alias cat='bat'
alias df="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias poweroff='doas /sbin/poweroff'
alias reboot='doas /sbin/reboot'
alias pacman='doas /sbin/pacman'
alias c='clear'

# # zsh parameter completion for the dotnet CLI
# _dotnet_zsh_complete() {
#     local completions=("$(dotnet complete "$words")")
#     reply=( "${(ps:\n:)completions}" )
# }
# compctl -K _dotnet_zsh_complete dotnet

eval "$(zoxide init zsh)"

# bun completions
[ -s "/home/ape/.bun/_bun" ] && source "/home/ape/.bun/_bun"

# bun
export BUN_INSTALL="/home/ape/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="${HOME}/.bin/dotnet:${PATH}"

# history
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
