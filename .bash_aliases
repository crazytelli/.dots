#!/usr/bin/bash

alias ls='ls -hN --color=auto --group-directories-first'
alias grep="grep --color=auto"
# copy move and remove commands
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -iv"
alias mkd="mkdir -pv"

# pacman aliases
alias pac='sudo pacman -S'
alias update='sudo pacman -Syu'
alias pacq='pacman -Q | grep'
alias pacs='pacman -Ss '

# files and configs shortcuts
alias r="ranger"
alias v="nvim"
alias cfi="${EDITOR} $HOME/.config/i3/config"
alias cfp="${EDITOR} $HOME/.config/polybar/config"
alias cfn="${EDITOR} $HOME/.config/nvim/init.vim"
alias cdn="cd $HOME/.config/nvim/ && ls"

# Git bare repository - gerenciando dot files com git --bare
alias cfg='/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME'
alias cfgs="cfg status"
alias cfga="cfg add"
alias cfgc="cfg commit -a"
alias cfgp="cfg push"

alias startx='startx;.prime-switch'
