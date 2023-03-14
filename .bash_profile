# .bash_profile

# source .bashrc for interactive login shells
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	# shellcheck source=/dev/null
	source "${HOME}/.bashrc"
    fi
fi
# User specific environment and startup programs
