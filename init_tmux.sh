#!/usr/bin/env bash

# Load configs
source $PWD/configs.sh

# Checking prerequisite
check_prerequisite tmux
check_prerequisite git
check_prerequisite curl

# Install Vim Plug ( Vim Plugin Manager )
if [ ! -f $tmux_plugin_manager_path ]; then
    git clone https://github.com/tmux-plugins/tpm $tmux_plugin_manager_path
fi
