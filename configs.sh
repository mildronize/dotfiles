#!/usr/bin/env bash

# Define functions
function check_prerequisite {
    # http://stackoverflow.com/a/677212
    hash $1 2>/dev/null || { echo >&2 "$1 isn't installed.  Aborting."; exit 1; }
}


target_path="$HOME/.dotfiles"
vimplug_path="$HOME/.vim/autoload/plug.vim"        # Vim Plug path
tmux_plugin_manager_path="$HOME/.tmux/plugins/tpm" # TPM Path
