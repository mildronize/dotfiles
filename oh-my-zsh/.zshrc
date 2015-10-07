# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="avit"
ZSH_THEME="gallifrey"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Fix not same color inside tmux of xfce4-terminal http://unix.stackexchange.com/questions/139082/zsh-set-term-screen-256color-in-tmux-but-xterm-256color-without-tmux
# This site explain why must fix with this way
export TERM=xterm-256color

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Customize to your needs...
if [[ -f "$HOME/.zshrc.local" ]]; then
  source "$HOME/.zshrc.local"
fi

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

# https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins
# plugins=(git osx python pip tmux vi-mode brew terminalapp sublime history)
plugins=(git osx python pip brew terminalapp docker sublime tmuxinator history)

# blind key in vi-mode
# bindkey -v "jk" vi-cmd-mode
# bindkey -v "kj" vi-cmd-mode
# bindkey -a  '^R' history-incremental-search-backward

# run zsh
source $ZSH/oh-my-zsh.sh
