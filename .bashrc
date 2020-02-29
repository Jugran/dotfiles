#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\u [\W]\$ '

#pulseaudio --start
# export GPG_TTY=$(tty)

GPG_TTY=$(tty)
export GPG_TTY

PATH=$PATH:~/.local/bin

#bash history size
HISTSIZE=10000
HISTFILESIZE=10000

# remove duplicates 
HISTCONTROL=ignoreboth:erasedups
