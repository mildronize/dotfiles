.PHONY: vim-all vim tmux-all tmux zsh-all zsh etc

all: vim-all tmux-all zsh-all etc

vim-all: vim vim-rest
tmux-all: tmux tmux-rest
zsh-all: zsh zsh-rest

vim:
	@echo install vim

vim-rest:
	@echo install vim-rest

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
