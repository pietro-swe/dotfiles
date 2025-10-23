export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="/home/pietro-swe/.local/bin:$PATH"
export PATH="/home/pietro-swe/.local/bin/lvim:$PATH"

export ZSH="$HOME/.oh-my-zsh"

# Remove weird percent symbol at eol
export PROMPT_EOL_MARK=''

# Set display for wslg
export DISPLAY=:0

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# The GOAT theme
ZSH_THEME="half-life"

# Just remind me to update when it's time
zstyle ':omz:update' mode reminder

# The only accecptable format
HIST_STAMPS="dd.mm.yyyy"

# Plugins
plugins=(aliases git docker docker-compose archlinux systemadmin)

# Start!
source $ZSH/oh-my-zsh.sh

source $HOME/.dotfiles/aliases.sh

source $HOME/.dotfiles/init.sh
