#!/usr/bin/env bash

# If not running interactively, don't do anything
case $- in
*i*) ;;
*) return ;;
esac

#######################################################
#  SOURCING
# Source global definitions
if [ -f /etc/bashrc ]; then
	# shellcheck source=/dev/null
	source /etc/bashrc
fi

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ] && [ ! -x "$rc" ] && [ ! -d "$rc" ]; then
			# shellcheck source=/dev/null
			source "$rc"
		fi
	done
fi
unset rc

#######################################################
# shelloptions
shopt -s histappend   #Bash appends new commands to the history file instead of overwriting it
shopt -s cmdhist      #Bash saves each individual command to the history file, even if it is a duplicate of a previous command
shopt -s checkwinsize #Bash checks the size of the terminal window after each command and updates its internal variables
shopt -s globstar     # matches all files and directories in the current directory and all subdirectories.
shopt -s dirspell     # Bash will correct the spelling

#######################################################
# PROMPTs
# \A HH:MM, \u Username, \H full host name, @SERVER Function, \w Full path, \W current directory
PS1="${FG_0087ff}[\A]${RESET}"
PS1+="${FG_d78700}[\u|${UI_PRES_SERVER%%.*}|$(ip route | gawk '/src/{print $9;exit}')]${RESET}"
PS1+="${FG_008700}[\w]${RESET}:\n"
PS1+="${FG_0087ff}[\W]${RESET}"
PS1+="\\$ "
# line continuation starter
export PS2="${FG_0087ff}>>> ${RESET}"

#######################################################
# dotfiles
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

function cfgupdate() {
	cfg add -u &&
		cfg commit -m "$1" &&
		cfg push origin main
}
