# .bashrc

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# alias
alias thanks="exit"
alias l="ls -la"
alias ll="ls -la | lolcat"
alias thanks="exit"

go_libs="-lm"
go_flags="-g -Wall -include ~/pkg/include/allheads.h -O3"
alias go_c="c99 -xc - $go_libs $go_flags"

# ssh
#find ~/.ssh/keys | egrep '\.(key$)|(pem$)' | xargs ssh-add 2> /dev/null

# once
#if ! ps aux | grep -v grep | grep tmux >> /dev/null; then
#  # append env
#  PATH=~/pkg/bin:$PATH
#fi

# local bins
[ -d ~/local/bin ] && export PATH=~/local/bin:$PATH
[ -d ~/local/lib ] && export LD_LIBRARY_PATH=~/local/lib:$LD_LIBRARY_PATH
[ -d ~/Android/Sdk/platform-tools ] && export PATH=~/Android/Sdk/platform-tools:$PATH

# git
if [ -f /etc/bash_completion ]; then
. /etc/bash_completion
fi

export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '

# welcome msg
fortune | cowsay | lolcat
echo "Welcome, Nick."
