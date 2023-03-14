#!/usr/bin/env bash

# Define the source directory of your dotfiles
srcdir="${HOME}/dotfiles-main"

# Define the destination directory for your dotfiles in your home directory
destdir="${HOME}"

# Copy all files and directories from the source directory to the destination directory,
# excluding the .git directory
rsync -av --exclude='.git' "${srcdir}/" "${destdir}/"

# Source the new .bashrc file
# shellcheck source=/dev/null
source "${HOME}/.bashrc"

# Remove the source directory
rm -rf "${srcdir}"

# Output a message indicating that the installation is complete
printf '%s' "Dotfiles installed to ${destdir}"