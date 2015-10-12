# Load Zgen ( zsh plugin manager )
if [[ -f "$HOME/.zshrc.zgen" ]]; then
  source "$HOME/.zshrc.zgen"
fi

# Customize to your needs...
if [[ -f "$HOME/.zshrc.local" ]]; then
  source "$HOME/.zshrc.local"
fi

