#!/bin/bash

for source in "${HOME}"/dotfiles-main/.*; do
    if [ -f "$source" ] || [ -d "$source" ]; then
        if [ "$source" != "${HOME}/dotfiles-main/.git" ]; then
        cp -rb "$source" -t "${HOME}"
        fi
    fi
done

rm -rf "${HOME}/dotfiles-main"

# shellcheck source=/dev/null
source "${HOME}"/.bashrc
