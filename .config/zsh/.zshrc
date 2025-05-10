autoload -Uz   \
  compinit     \
  bashcompinit
compinit; bashcompinit

alias ls="ls --human-readable --almost-all --no-group --color=always -l"
alias c="clear"
alias d="git --git-dir=${HOME}/.dots --work-tree=${HOME}"
alias e="exit 0"
