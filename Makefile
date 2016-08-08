.PHONY: al-curlvim-all vim vim-only vim-clean tmux-all tmux zsh-all zsh etc
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

current_dir = $(shell pwd)
# plugin_vimrc_path = "$(current_dir)/vim/plugins"
vim_plugin_path = "$(HOME)/.vim"

help:
	@python -c "$$PRINT_HELP_PYSCRIPT" < $(MAKEFILE_LIST)

all: vim-all tmux-all zsh-all etc ## Install all (vim, tmux, zsh and their configs)

vim-all: vim-only vim-install-vimplug ## Install .vimrc, local .vimrc and all plugins
	@echo install vim-rest
	mkdir -p $(vim_plugin_path)
	ln -sf $(current_dir)/vim/.vimrc.plug.local $(HOME)
	ln -sf $(current_dir)/vim/.vimrc.keys.local $(HOME)
	ln -sf $(current_dir)/vim/.vimrc.local $(HOME)
	$(MAKE) vim-install-plugins

tmux-all: tmux tmux-rest ## Install .tmuxconf and all Tmux Plugins
zsh-all: zsh zsh-rest ## Install oh-my-zsh and their configs

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
	rm -rfv $(HOME)/.vimrc* $(HOME)/.vim

### END VIM SECTION

tmux:
	@echo install tmux

tmux-rest:
	@echo install tmux-rest

zsh:
	@echo install zsh
	ln -sf $(current_dir)/zsh/.zshrc $(HOME)

zsh-rest:
	@echo install zsh-rest
	ln -sf $(current_dir)/zsh/.zshrc.local $(HOME)

zsh-clean:
	rm -rfv $(HOME)/.zshrc* $(HOME)/.vim

etc:
	@echo install etc
