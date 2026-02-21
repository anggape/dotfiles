setopt                 \
  extended_history     \
  share_history        \
  hist_ignore_dups     \
  hist_ignore_all_dups \
  hist_ignore_space    \
  hist_reduce_blanks   \
  hist_save_no_dups

autoload -Uz                  \
  compinit                    \
  up-line-or-beginning-search \
  down-line-or-beginning-search
compinit -d "$XDG_CACHE_HOME/zsh_compdump"

zstyle ":completion:*" matcher-list m:{a-zA-Z}={A-Za-z}
zstyle ":completion:*" menu         select
zstyle ":completion:*" rehash       true

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey -e
bindkey "^A"      beginning-of-line
bindkey "^E"      end-of-line
bindkey "^[[1;5D" backward-word
bindkey "^[[1;3D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;3C" forward-word
bindkey "^[[3~"   delete-char
bindkey "^[^?"    backward-delete-word
bindkey "^H"      backward-delete-word
bindkey "^[[3;3~" delete-word
bindkey "^[[3;5~" delete-word
bindkey "^[[Z"    reverse-menu-complete
bindkey "^[[A"    up-line-or-beginning-search
bindkey "^[[B"    down-line-or-beginning-search

alias ls="ls -l --almost-all --group-directories-first --human-readable --color=always --sort=version"
alias dot="git --git-dir=$XDG_DATA_HOME/dotfiles --work-tree=$HOME"
alias c="clear"
alias e="exit 0"

source "$ZDOTDIR/.zprompt"
