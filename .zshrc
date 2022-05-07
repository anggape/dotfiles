export ZSH=$HOME/.config/zsh/ohmyzsh

ZSH_THEME="rounded"

zstyle ':omz:update' mode disabled # disable automatic updates
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
ZSH_CUSTOM=$HOME/.config/zsh

plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias ls='ls --almost-all'
alias df="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias poweroff='doas /sbin/poweroff'
alias reboot='doas /sbin/reboot'
alias pacman='doas /sbin/pacman'

# zsh parameter completion for the dotnet CLI
_dotnet_zsh_complete() {
    local completions=("$(dotnet complete "$words")")
    reply=( "${(ps:\n:)completions}" )
}
compctl -K _dotnet_zsh_complete dotnet
