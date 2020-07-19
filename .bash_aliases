#!/usr/bin/bash

alias ls='ls --color=auto'
alias cp='cp -i'
alias pacq='pacman -Q | grep'
alias pacs='pacman -Ss '

# Git bare repository - gerenciando dot files com git --bare
alias config='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'
