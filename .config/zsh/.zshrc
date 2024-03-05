source "$ZDOTDIR/config/env.zsh"
source "$ZDOTDIR/config/prompt.zsh"
source "$ZDOTDIR/config/options.zsh"
source "$ZDOTDIR/config/alias.zsh"

# TODO: move this
#
# node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"

# bun
[ -s "/home/ape/.bun/_bun" ] && source "/home/ape/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

