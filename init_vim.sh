#!/usr/bin/env bash

# Load configs
source $PWD/configs.sh

# Checking prerequisite
check_prerequisite vim
check_prerequisite git
check_prerequisite curl

# Install Vim Plug ( Vim Plugin Manager )
if [ ! -f $vimplug_path ]; then
    curl -fLo $vimplug_path --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
