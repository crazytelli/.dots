#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '


# Meus alias
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export PATH=$HOME/.local/bin:$PATH
