# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Customize to your needs...
if [[ -f "$HOME/.zshrc.local" ]]; then
  source "$HOME/.zshrc.local"
fi

# Customize only oh-my-zsh feature
if [[ -f "$HOME/.zshrc.oh-my-zsh" ]]; then
  source "$HOME/.zshrc.oh-my-zsh"
fi

# run zsh
source $ZSH/oh-my-zsh.sh
