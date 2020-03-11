#!/bin/zsh
export DOTFILE_HOME="$HOME/dotfiles"
export CABOCHON_HOME="$HOME/opallabs/cabochon"
export MONOLITH_HOME="$CABOCHON_HOME/packages/monolith"
export UNIVERSE_HOME="$CABOCHON_HOME/packages/universe"

source "$DOTFILE_HOME/scripts/alias.bash"

BLACK='%F{black}'
BLUE='%F{blue}'
CYAN='%F{cyan}'
GREEN='%F{green}'
MAGENTA='%F{magenta}'
RED='%F{red}'
WHITE='%F{white}'
YELLOW='%F{yellow}'
REMOVE='%f'

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT="${MAGENTA}[EMBEDITOR] \${vcs_info_msg_0_} $GREEN%1d$REMOVE: "
