.PHONY: vim-all vim vim-only vim-clean tmux-all tmux zsh-all zsh etc

current_dir = $(shell pwd)
# plugin_vimrc_path = "$(current_dir)/vim/plugins"
vim_plugin_path = "$(HOME)/.vim"

all: vim-all tmux-all zsh-all etc

vim-all: vim vim-rest
tmux-all: tmux tmux-rest
zsh-all: zsh zsh-rest

vim: vim-only
	$(current_dir)/init_vim.sh
	vim +PlugInstall +qall # Install plugins by Vim Plug

vim-only:
	@echo install vim
	ln -sf $(current_dir)/vim/.vimrc $(HOME)

vim-rest:
	@echo install vim-rest
	$(current_dir)/init_vim.sh
	mkdir -p $(vim_plugin_path)
	ln -sf $(current_dir)/vim/.vimrc.plug.local $(HOME)
	ln -sf $(current_dir)/vim/.vimrc.keys.local $(HOME)
	ln -sf $(current_dir)/vim/.vimrc.local $(HOME)
	vim +PlugInstall +qall # Install plugins by Vim Plug

vim-clean:
	rm -rfv $(HOME)/.vimrc* $(HOME)/.vim

tmux:
	@echo install tmux

tmux-rest:
	@echo install tmux-rest

zsh:
	@echo install zsh

zsh-rest:
	@echo install zsh-rest

etc:
	@echo install etc
