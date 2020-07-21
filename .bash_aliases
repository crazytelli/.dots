#!/usr/bin/bash

alias ls='ls -hN --color=auto --group-directories-first'
alias grep="grep --color=auto"
# copy move and remove commands
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -vI"
alias mkd="mkdir -pv"

# pacman aliases
alias pac='sudo pacman -Syu '
alias pacq='pacman -Q | grep'
alias pacs='pacman -Ss '

# files and configs shortcuts
alias r="ranger"
alias cfi="${EDITOR} $HOME/.config/i3/config"
alias cfp="${EDITOR} $HOME/.config/polybar/config"
alias cfn="${EDITOR} $HOME/.config/nvim/init.vim"
alias cs="config status"
alias ca="config add"

# Git bare repository - gerenciando dot files com git --bare
alias config='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'
