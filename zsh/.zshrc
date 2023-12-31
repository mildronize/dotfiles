# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
# Add For MAC
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

#add local bin pah
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

# bash -c "cd $HOME/.dotfiles && git submodule update --init --recursive"

# Load Zgen ( zsh plugin manager )
if [[ -f "$HOME/.zshrc.zgen" ]]; then
  source "$HOME/.zshrc.zgen"
fi

# Customize to your needs...
if [[ -f "$HOME/.zshrc.local" ]]; then
  source "$HOME/.zshrc.local"

fi

# export NVM_DIR="/home/mildronize/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"



