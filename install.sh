#!/usr/bin/env bash

# Define the source directory of your dotfiles
srcdir="${HOME}/dotfiles-main"

# Define the destination directory for your dotfiles in your home directory
destdir="${HOME}"

# Copy all files and directories from the source directory to the destination directory,
# excluding the .git directory
echo "Installing dotfiles: "
rsync -a --backup --suffix='.bak' --exclude='.git' -P "${srcdir}/" "${destdir}/" | while read -r _; do
    printf '%s' "."
    sleep 0.05
done

# Output a message indicating that the installation is complete
printf '\n\n%s\n' "Dotfiles installed to ${destdir}"

# Remove the directory containing the install script
rm -rf "$(dirname "${BASH_SOURCE[0]}")"

# Source the new .bashrc file
# shellcheck source=/dev/null
source "${HOME}/.bashrc"
