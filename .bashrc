
[[ $- != *i* ]] && return

export PATH=$PATH:/home/lucas/bin

export EDITOR=nvim
export VISUAL=$EDITOR

alias vi='EDITOR'
alias vim='$EDITOR'
alias nvim='$EDITOR'
alias nvi='$EDITOR'
alias nano='$EDITOR'
alias micro='$EDITOR'
alias emacs='$EDITOR'

export PS1="\[\033[35m\]\u \[\033[34m\]\W \[\033[37m\]$ \[\033[0;0m\]"

alias ls=exa
export PATH=$PATH:/home/lucas/.gigachad/bin
export PATH="$PATH:/home/lucas/.dotnet/tools:/home/lucas/opt/cross/bin"
