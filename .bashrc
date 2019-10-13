#!/bin/bash
# NON SYSTEM INVASIVE BASHRC

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

#######################################################
#  SOURCING
#######################################################

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Export Exports !
if [ -f ~/.dotfiles/exports ]; then
    . ~/.dotfiles/exports
fi


# To temporarily bypass an alias, preceed the command with a \
if [ -f ~/.dotfiles/aliases ]; then
    . ~/.dotfiles/aliases
fi


# Source custome functions
if [ -f ~/.dotfiles/functions ]; then
    . ~/.dotfiles/functions
fi


if [ -f ~/.dotfiles/colors/256colors_tput ]; then
    . ~/.dotfiles/colors/256colors_tput
fi


if [ -f ~/.dotfiles/colors/dir_colors ]; then
    eval $(dircolors ~/.dotfiles/colors/dir_colors)
fi

#######################################################
# SIMPLE PROMPTs
#######################################################

# Simple PS1
# \A HH:MM, \u Username, \H full host name, @SERVER Function, \w Full path, \W current directory
PS1="${FG_00af5f}[\A]${RESET}--"
PS1+="${FG_ffffff}${BG_005faf}[\u:\H@`whichENM`]${RESET}--"
PS1+="${FG_ffaf00}[\w]${RESET}:\n"
PS1+="${FG_00af5f}[\W]${RESET}"
PS1+="\\$ "

# Simple PS2
# line continuation starter
export PS2="${FG_0087ff}>>> ${RESET}"

#######################################################
# dotfiles bare repo

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'