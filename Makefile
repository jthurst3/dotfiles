# modified from github.com/joeljk13/dotfiles/blob/master/Makefile
# on December 21, 2015

.PHONY: all

all: ~/.bash_profile ~/.bashrc ~/.gdbinit ~/.gitconfig ~/.gitignore ~/.paths ~/.profile ~/.tmux.conf ~/.tmuxline ~/.vimrc ~/.xinitrc ~/.zshrc 

~/.bash_profile: ~/dotfiles/.bash_profile
	cp "$<" "$@"

~/.bashrc: ~/dotfiles/.bashrc
	cp "$<" "$@"

~/.gdbinit: ~/dotfiles/.gdbinit
	cp "$<" "$@"

~/.gitconfig: ~/dotfiles/.gitconfig
	cp "$<" "$@"

~/.gitignore: ~/dotfiles/.gitignore
	cp "$<" "$@"

~/.paths: ~/dotfiles/.paths
	cp "$<" "$@"

~/.profile: ~/dotfiles/.profile
	cp "$<" "$@"

~/.tmux.conf: ~/dotfiles/.tmux.conf
	cp "$<" "$@"

~/.tmuxline: ~/dotfiles/.tmuxline
	cp "$<" "$@"

~/.vimrc: ~/dotfiles/.vimrc
	cp "$<" "$@"

~/.xinitrc: ~/dotfiles/.xinitrc
	cp "$<" "$@"

~/.zshrc: ~/dotfiles/.zshrc
	cp "$<" "$@"

