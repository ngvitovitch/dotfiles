# Shortcuts

alias _="sudo"
alias g="git"
alias v="vim"

# List declared aliases, functions

alias listaliases="alias | sed 's/=.*//'"
alias listfunctions="declare -f | grep '^[a-z].* ()' | sed 's/{$//'" # show non _prefixed functions

# Miscellaneous

alias quit="exit"
alias week="date +%V"
