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

# Permite mudar de diretorio sem digitar cd
shopt -s autocd
