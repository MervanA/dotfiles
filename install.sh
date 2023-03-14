#!/bin/bash

for file in "${HOME}"/dotfiles-main/.*; do
    if [ -f "$file" ] || [ -d "$file" ]; then
        cp -b "$file" -t "${HOME}"
    fi
done

rm -rf "${HOME}/dotfiles-main"

# shellcheck source=/dev/null
source "${HOME}"/.bashrc
