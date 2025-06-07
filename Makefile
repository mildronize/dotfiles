.PHONY: all vim-all vim vim-only vim-clean tmux zsh etc babun
.DEFAULT_GOAL := help

define PRINT_HELP_PYSCRIPT
import re, sys

for line in sys.stdin:
	match = re.match(r'^([a-zA-Z_-]+):.*?## (.*)$$', line)
	if match:
		target, help = match.groups()
		print("%-20s %s" % (target, help))
endef
export PRINT_HELP_PYSCRIPT

SHELL:=/bin/bash

current_dir = $(shell pwd)
tmux_plugin_manager_path = $(shell source $(current_dir)/configs.sh; echo "$$tmux_plugin_manager_path")
# plugin_vimrc_path = "$(current_dir)/vim/plugins"
vim_plugin_path = "$(HOME)/.vim"
dotfiles_backup_path = "$(HOME)/.dotfiles-backup"
# zgen_init_path = "$(HOME)"/.zgen/init.zsh

test:
	echo $(test_var)

help:
	@python -c "$$PRINT_HELP_PYSCRIPT" < $(MAKEFILE_LIST)

backup:
	mkdir -p $(dotfiles_backup_path)
	cp .vimrc* $(dotfiles_backup_path)
	cp .zshrc* $(dotfiles_backup_path)
	cp .tmux.conf* $(dotfiles_backup_path)

all: vim-all tmux zsh etc ## Install all (vim, tmux, zsh and their configs)

vim-all: vim-only vim-install-vimplug ## Install .vimrc, local .vimrc and all plugins
	@echo install vim-rest
	mkdir -p $(vim_plugin_path)
	ln -sf $(current_dir)/vim/.vimrc.plug.local $(HOME)
	ln -sf $(current_dir)/vim/.vimrc.keys.local $(HOME)
	ln -sf $(current_dir)/vim/.vimrc.local $(HOME)
	$(MAKE) vim-install-plugins

# tmux-all: tmux tmux-rest ## Install .tmuxconf and all Tmux Plugins
# zsh-all: zsh zsh-rest ## Install oh-my-zsh and their configs

### START VIM SECTION

vim: vim-only vim-install-vimplug vim-install-plugins ## Install .vimrc with some useful plugins

vim-only: ## Install only .vimrc
	@echo install vim
	ln -sf $(current_dir)/vim/.vimrc $(HOME)

vim-install-plugins:
	vim +PlugInstall +qall # Install plugins by Vim Plug

vim-install-vimplug:
	$(current_dir)/init_vim.sh

vim-clean: ## Clean all vimrc and their plugins
	rm -rIv $(HOME)/.vimrc* $(HOME)/.vim

### END VIM SECTION

tmux: ## Install .tmux.conf
	@echo install tmux
	$(current_dir)/init_tmux.sh
	ln -sf $(current_dir)/tmux/.tmux.conf $(HOME)
	tmux source ~/.tmux.conf

tmux-clean: ## Clean Tmux
	rm -rIv $(HOME)/.tmux.conf* $(tmux_plugin_manager_path)

zsh: ## Install .zshrcs
	@echo install zsh
	ln -sf $(current_dir)/zsh/.zshrc $(HOME)

zsh-clean: ## Clean zsh
	rm -rfv $(HOME)/.zshrc* $(HOME)/.zgen

babun: ## Install babunrc and their rcs.
	ln -sf $(current_dir)/babun/.minttyrc $(HOME)

etc:
	@echo install etc
