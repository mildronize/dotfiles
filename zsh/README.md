## Install

```bash
brew install fzf # A command-line fuzzy finder
brew install zoxide # A smarter cd command
brew install starship
brew install eza # ls alternative
brew install git-delta # git diff alternative 
brew install fnm # Node Version Manager
```

### Setup Delta
```
git config --global core.pager delta
git config --global interactive.diffFilter 'delta --color-only'
git config --global delta.navigate true
git config --global merge.conflictStyle zdiff3
```

### A curated list of command-line utilities written in Rust
https://gist.github.com/sts10/daadbc2f403bdffad1b6d33aff016c0a

brew install pygments

### For Starship install font
A [Nerd Font](https://www.nerdfonts.com/font-downloads) installed and enabled in your terminal (for example, try the FiraCode Nerd Font).

### AI Shell

https://github.com/BuilderIO/ai-shell

```
npm install -g @builder.io/ai-shell
ai config set OPENAI_KEY=<your token>
```

### Program 


#### Kubernetes

```bash
# kubectl
brew install kubernetes-cli
# alias k=kubectl

# kubectx
brew install kubectx
# Use k ctx
# Use k ns
```