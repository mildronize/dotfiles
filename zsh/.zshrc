export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#add local bin pah
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

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
