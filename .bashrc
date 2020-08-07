#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

set -o vi

# Meus alias
if [ -f ~/.aliasrc ]; then
    . ~/.aliasrc
fi

if [ -f ~/.profile ]; then
    . ~/.profile
fi
