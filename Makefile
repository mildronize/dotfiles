.PHONY: vim-all vim vim-clean tmux-all tmux zsh-all zsh etc

current_dir = $(shell pwd)

all: vim-all tmux-all zsh-all etc

vim-all: vim vim-rest
tmux-all: tmux tmux-rest
zsh-all: zsh zsh-rest

vim:
	@echo install vim
	ln -sf $(current_dir)/vim/.vimrc $(HOME)/.vimrc

vim-rest:
	@echo install vim-rest
	ln -sf $(current_dir)/vim/.vimrc.plug $(HOME)/.vimrc.plug

vim-clean:
	rm -f $(HOME)/.vimrc*

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
