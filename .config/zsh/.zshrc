setopt                 \
  extended_history     \
  share_history        \
  hist_ignore_dups     \
  hist_ignore_all_dups \
  hist_ignore_space    \
  hist_reduce_blanks   \
  hist_save_no_dups
autoload -Uz compinit
compinit -d "$HOME/.cache/zsh_compdump"

alias ls="ls -l --almost-all --group-directories-first --human-readable --color=always --sort=version"
alias dot="git --git-dir=$HOME/.local/share/dotfiles --work-tree=$HOME"

alias c="clear"
alias e="exit 0"
