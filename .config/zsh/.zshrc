setopt                 \
  extended_history     \
  share_history        \
  hist_ignore_dups     \
  hist_ignore_all_dups \
  hist_ignore_space    \
  hist_reduce_blanks   \
  hist_save_no_dups

autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zsh_compdump"

zstyle ":completion:*" matcher-list m:{a-zA-Z}={A-Za-z}
zstyle ":completion:*" menu         select
zstyle ":completion:*" rehash       true

alias ls="ls -l --almost-all --group-directories-first --human-readable --color=always --sort=version"
alias dot="git --git-dir=$XDG_DATA_HOME/dotfiles --work-tree=$HOME"
alias c="clear"
alias e="exit 0"

source "$ZDOTDIR/.zprompt"
