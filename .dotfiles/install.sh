#!/bin/bash
 
declare -a dotfiles=(
${HOME}/dotfiles/.bashrc
${HOME}/dotfiles/.bash_profile
${HOME}/dotfiles/.inputrc
${HOME}/dotfiles/.vimrc
${HOME}/dotfiles/.dotfiles
)

for i in ${dotfiles[@]} ; do
    cp -r "$i" ~
done

rm -Rf ~/dotfiles