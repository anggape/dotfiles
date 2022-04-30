alias ls='ls --almost-all'
alias df="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias poweroff='doas /sbin/poweroff'
alias reboot='doas /sbin/reboot'
alias pacman='doas /sbin/pacman'

# autocomplete
autoload -U compinit
compinit -i

# case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# zsh auto suggestions
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh parameter completion for the dotnet CLI
_dotnet_zsh_complete()
{
  local completions=("$(dotnet complete "$words")")

  reply=( "${(ps:\n:)completions}" )
}

compctl -K _dotnet_zsh_complete dotnet
