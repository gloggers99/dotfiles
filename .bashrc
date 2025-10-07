#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls=eza

GTK_THEME=Adwaita-dark
GTK_APPLICATION_PREFER_DARK_THEME=1

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '


alias config='/usr/bin/git --git-dir=/home/lucas/.cfg/ --work-tree=$HOME'
