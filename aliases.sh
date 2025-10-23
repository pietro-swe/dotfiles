# Personal Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias zshconfig="nvim $HOME/.zshrc"
alias winhere="explorer.exe ."
alias bls="eza --color=always --icons=always --long --git --all --no-user"
alias wttrpoa="curl wttr.in/Porto+Alegre,Brazil"
alias wttrrg="curl wttr.in/Rio+Grande,Brazil"

alias dev="cd ~/dev"
alias me="cd ~/dev/personal"
alias acad="cd ~/dev/academic"
alias prof="cd ~/dev/professional"
alias ufrgs="cd ~/dev/academic/ufrgs"
alias unipampa="cd ~/dev/academic/unipampa"
alias itec="cd ~/dev/professional/itec"
alias freelance="cd ~/dev/professional/freelance"

# Aliases I stole from omarchy hehe
zd() {
  if [ $# -eq 0 ]; then
    builtin cd ~ && return
  elif [ -d "$1" ]; then
    builtin cd "$1"
  else
    z "$@" && printf "\U000F17A9 " && pwd || echo "Error: Directory not found"
  fi
}
alias ls='eza -lh --group-directories-first --icons=auto'
alias lsa='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"
alias cd="zd"