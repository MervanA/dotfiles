#!/bin/bash
 
declare -a dotfiles=(
.bashrc
.bash_profile
.inputrc
.vimrc
.dotfiles
)

for i in ${dotfiles[@]} ; do
    mv "$i" ~
done

rm -Rf ~/dotfiles