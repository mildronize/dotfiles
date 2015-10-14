# dotfiles
This is new dotfiles of me.

**Features**
- To reduce tightly coupled in each tool from [my previous version](https://github.com/mildronize/dotfiles-legacy) (forked from [ibotdotout](https://github.com/ibotdotout/dotfiles))
- To use [Dotbot](https://github.com/anishathalye/dotbot/) to create symbolink to my home automatically
- Use [Vim Plug]
The previous version uses [Janus Vim](https://github.com/carlhuda/janus)
- Use [Zgen](https://github.com/tarjoilija/zgen) to manage [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) and zsh plugins

> **Note:** This version is only install all things, next, I will seperate it.

## Install
- `./init` for installing [Vim Plug] that it can manage many vim plugins
- `./dotbot`
- `source ~/.zshrc` to install oh-my-zsh
- Run `vim +PlugInstall +qall` or run `vim`, then installing plugin by `:PlugInstall`

## Update Dotfiles
- `./dotbot`

## Add Plugin
- Add plugin name in `~/.vimrc`
- Reload vim config `:source ~/.vimrc` or Reopen vim
- Install & Update plugin by using `:PlugInstall`

## For Putty
- [My Putty Configuration](https://gist.githubusercontent.com/mildronize/3ffffa30b98ddaa7d942/raw/13126c182b15289d44b352d17e0ad27d086650da/mildronize-putty-sessions.reg)
- Run `export PUTTY=true`

[Vim Plug]: https://github.com/junegunn/vim-plug.git

