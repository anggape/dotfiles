setopt sharehistory      # share history between all session.
setopt histignoredups    # don't recodr same entry.
setopt histignorealldups # delete old entry.
setopt extendedhistory   # :start:elapsed;command format.
setopt histsavenodups    # don't write duplicate entries in the history file.
setopt histreduceblanks  # remove blanks before adding it to history file.
setopt histignorespace   # don't record history that start with space.
setopt globdots          # include file/directory start with dot in completions.

autoload -Uz                    \
  compinit                      \
  bashcompinit                  \
  up-line-or-beginning-search   \
  down-line-or-beginning-search
compinit; bashcompinit

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

zstyle ':completion:*' menu         select              # display selection.
zstyle ':completion:*' matcher-list m:{a-zA-Z}={A-Za-z} # case insensitive completion.

bindkey -e                                      # use emacs mode.
bindkey '^[[3~'   delete-char                   # delete           : delete backward.
bindkey '^[^?'    backward-delete-word          # alt + backspace  : delete word backward.
bindkey '^H'      backward-delete-word          # ctrl + backspace : delete word backward.
bindkey '^[[3;3~' delete-word                   # alt + delete     : delete word forward.
bindkey '^[[3;5~' delete-word                   # ctrl + delete    : delete word forward.
bindkey '^[[1;5D' backward-word                 # ctrl + left      : jump word backward.
bindkey '^[[1;3D' backward-word                 # alt + left       : jump word backward.
bindkey '^[[1;5C' forward-word                  # ctrl + right     : jump word forward
bindkey '^[[1;3C' forward-word                  # alt + right      : jump word forward
bindkey '^[[Z'    reverse-menu-complete         # shift + tab      : select previous completion menu.
bindkey '^[[A'    up-line-or-beginning-search   # up arrow         : search previous history.
bindkey '^[[B'    down-line-or-beginning-search # down arrow       : search next history.

alias ls="ls --human-readable --almost-all --no-group --color=always -l"
alias c="clear"
alias d="git --git-dir=${HOME}/.dots --work-tree=${HOME}"
alias e="exit 0"
