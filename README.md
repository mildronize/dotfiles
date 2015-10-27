# dotfiles
This is new dotfiles of me.

**Features**
- To reduce tightly coupled in each tool from [my previous version](https://github.com/mildronize/dotfiles-legacy) (forked from [ibotdotout](https://github.com/ibotdotout/dotfiles))
- To use [Dotbot](https://github.com/anishathalye/dotbot/) to create symbolink to my home automatically
- Use [Vim Plug]
The previous version uses [Janus Vim](https://github.com/carlhuda/janus)
- Use [Zgen](https://github.com/tarjoilija/zgen) to manage [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) and zsh plugins

> **Note:** This version is only install all things, next, I will seperate it.

## Contents
  * [dotfiles](#dotfiles)
    * [Install](#install)
    * [Update Dotfiles](#update-dotfiles)
    * [Add Plugin](#add-plugin)
    * [For Putty](#for-putty)
  * [Vim](#vim)
    * [Features](#features)
    * [My Mapping Keys](#my-mapping-keys)
      * [Overriding Basic key](#overriding-basic-key)
      * [Work with Git by <a href="https://github.com/tpope/vim-fugitive">Fugitive</a> ](#work-with-git-by-fugitive)
      * [Auto zoom when active window by <a href="https://github.com/zhaocai/GoldenView.Vim">GoldenView</a> ](#auto-zoom-when-active-window-by-goldenview)
      * [Travel in a tree explorer by <a href="https://github.com/scrooloose/nerdtree">NERDtree</a> ](#travel-in-a-tree-explorer-by-nerdtree)
      * [Working with system clipboard by <a href="https://github.com/scrooloose/nerdtree">System Copy</a> ](#working-with-system-clipboard-by-system-copy)
      * [Quick comment code by <a href="https://github.com/scrooloose/nerdcommenter">NERDcommenter</a> ](#quick-comment-code-by-nerdcommenter)
      * [Quick aligning code by <a href="https://github.com/godlygeek/tabular">Tabular</a> ](#quick-aligning-code-by-tabular)

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

# Vim
Vim Usage:
- See in [Multi-language Vim Cheat sheet](http://sim.rtorr.com)
- มีภาษาไทยด้วยนะเออ ดูได้ใน [คู่มือการใช้ Vim ฉบับย่อ](http://vim.rtorr.com/lang/th/)

## Features
- Auto `PASTE` mode when pasting in insert mode
## My Mapping Keys
### Overriding Basic key
File: `~/.vimrc.keys`

Action                                                          | Key
---                                                             | ---
Leader                                                          | <kbd>space</kbd>
Go to NORMAL mode                                               | <kbd>j</kbd><kbd>k</kbd> or <kbd>k</kbd><kbd>j</kbd>
Toggle PASTE mode                                               | <kbd>F3</kbd>
Switching word wrap                                             | `leader` <kbd>w</kbd>
`INSERT` Jump out to the end of line <br>(still in insert mode) | <kbd>Ctrl</kbd><kbd>l</kbd>
Move to {next,previous} tab                                     | <kbd>L</kbd> ,  <kbd>H</kbd>
Swap window to {next,previous} buffer                           | `leader` <kbd>l</kbd> , `leader` <kbd>h</kbd>
Toggle search highlight                                         | `leader`<kbd>h</kbd><kbd>s</kbd>
Toggle background dark or light                                 | `leader`<kbd>b</kbd><kbd>g</kbd>

### Work with Git by [Fugitive]

Action     | Key
---        | ---
Git status | `leader`<kbd>g</kbd><kbd>s</kbd>
Git commit | `leader`<kbd>g</kbd><kbd>c</kbd>
Git push   | `leader`<kbd>g</kbd><kbd>p</kbd>
Git diff   | `leader`<kbd>g</kbd><kbd>d</kbd>

Read more at [Fugitive]

[Fugitive]: https://github.com/tpope/vim-fugitive

### Auto zoom when active window by [GoldenView]
Always have a nice view for vim split windows

Action                                  | Key
---                                     | ---
Go to next split window                 | <kbd>Ctrl</kbd><kbd>n</kbd>
Swapping main split with not main split | <kbd>F7</kbd>

Read more at [GoldenView]

[GoldenView]: https://github.com/zhaocai/GoldenView.Vim

### Travel in a tree explorer by [NERDtree]

Action          | Key
---             | ---
Toggle NERDtree | `leader`<kbd>n</kbd>

Read more at [NERDtree]

[NERDtree]: https://github.com/scrooloose/nerdtree

### Working with system clipboard by [System Copy]
Prerequisite: `xsel` for linux, other? read in [System Copy]

Action                                             | Key
---                                                | ---
Copy the selected text into system clipboard       | <kbd>c</kbd><kbd>p</kbd>
`NORMAL` Paste from system clipboard into new line | <kbd>c</kbd><kbd>v</kbd>

Read more at [System Copy]

[System Copy]: https://github.com/christoomey/vim-system-copy

### Quick comment code by [NERDcommenter]

Action              | Key
---                 | ---
Toggle comment code | `leader`<kbd>/</kbd>
Comment code        | `leader`<kbd>c</kbd><kbd>c</kbd>
Uncomment code      | `leader`<kbd>c</kbd><kbd>u</kbd>

Read more at [NERDcommenter]

[NERDcommenter]: https://github.com/scrooloose/nerdcommenter

### Quick aligning code by [Tabular]

Usage: `leader`<kbd>a</kbd><kbd>[Char what you want to align in same position in each line]</kbd>

Example code:
```
dog=1
elephant=1
```
To algin use `leader`<kbd>a</kbd><kbd>=</kbd> , after that:
```
dog      = 1
elephant = 1
```

If it's not work. Don't worry!. Just add your key map in `~/.dotfiles/vim/plugin/tabular.vim`

Read more at [Tabular]

[Tabular]: https://github.com/godlygeek/tabular
