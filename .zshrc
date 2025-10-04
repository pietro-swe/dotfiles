# Important Paths
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="/home/marechal-dev/.local/bin:$PATH"
export PATH="/home/marechal-dev/.local/bin/lvim:$PATH"

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

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

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Remove weird percent symbol at eol
export PROMPT_EOL_MARK=''

# Personal Aliases
alias .="cd .."
alias ..="cd ../.."
alias ...="cd ../../.."
alias ....="cd ../../../.."
alias .....="cd ../../../../.."

alias zshconfig="nvim $HOME/.zshrc"
alias winhere="explorer.exe ."
alias bls="eza --color=always --icons=always --long --git --all --no-user"
alias wttrpoa="curl wttr.in/Porto+Alegre,Brazil"
alias wttrrg="curl wttr.in/Rio+Grande,Brazil"

alias dev="cd ~/dev"
alias med="cd ~/dev/personal"
alias aed="cd ~/dev/academic"
alias ped="cd ~/dev/professional"
alias ufrgs="cd ~/dev/academic/ufrgs"
alias unipampa="cd ~/dev/academic/unipampa"
alias itec="cd ~/dev/professional/itec"
alias freelance="cd ~/dev/professional/freelance"

# Setting display for wslg
export DISPLAY=:0

# Use zsh-autosuggestions
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# pnpm
export PNPM_HOME="/home/marechal-dev/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

eval "$(/home/pietro-swe/.local/bin/mise activate zsh)" # added by https://mise.run/zsh

source <(fzf --zsh)

eval "$(zoxide init zsh)"
