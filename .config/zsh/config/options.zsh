autoload -Uz compinit bashcompinit up-line-or-beginning-search down-line-or-beginning-search
compinit -d $HOME/.zcompdump; bashcompinit
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

setopt appendhistory
setopt hist_expiredupsfirst
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_findnodups
setopt hist_savenodups
setopt sharehistory

zstyle ':completion:*' menu select                  # tab selection
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # case insensitive

bindkey '^A'      beginning-of-line                 # ctrl+a
bindkey '^E'      end-of-line                       # ctrl+e
bindkey '^[[1;5D' backward-word                     # ctrl+left
bindkey '^[[1;5C' forward-word                      # ctrl+right
bindkey '^?'      backward-delete-char              # backspace
bindkey '^[[3~'   delete-char                       # delete
bindkey '^H'      backward-delete-word              # ctrl+backspace
bindkey '^[^?'    backward-delete-word              # alt+backspace
bindkey '^[[3;5~' delete-word                       # ctrl+delete
bindkey '^[[3;3~' delete-word                       # ctrl+delete
bindkey '^[[Z'    reverse-menu-complete             # shift+tab
bindkey '^[[A'    up-line-or-beginning-search       # up
bindkey '^[[B'    down-line-or-beginning-search     # down
