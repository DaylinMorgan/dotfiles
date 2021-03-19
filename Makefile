SHELL = /bin/bash
DOTFILES_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
PATH := $(DOTFILES_DIR)/bin:$(PATH)
export XDG_CONFIG_HOME = $(HOME)/.config
# export STOW_DIR := $(DOTFILES_DIR)
RUNCOMFILES := $(shell ls -A runcom)
DOTFILES := $(addprefix $(HOME)/,$(RUNCOMFILES))

.PHONY: all

all: linux
 
linux: dotfiles config

.ONESHELL:
dotfiles:
	@for FILE in $(RUNCOMFILES); do 
	if [ -f $(HOME)/$$FILE -a ! -h $(HOME)/$$FILE ]; then 
		mv -v $(HOME)/$$FILE{,.bak}; fi; 
	ln -sfv $(DOTFILES_DIR)runcom/$$FILE $(HOME)/$$FILE; done

.ONESHELL:
config:
	@mkdir -p $(XDG_CONFIG_HOME)
	for DIR in $$(\ls -A config); do
		ln -sv $(DOTFILES_DIR)config/$$DIR $(XDG_CONFIG_HOME)/$$DIR 
	done


# old stow based linking 
# link:
# 	for FILE in $$(\ls -A runcom); do if [ -f $(HOME)/$$FILE -a ! -h $(HOME)/$$FILE ]; then \
# 		mv -v $(HOME)/$$FILE{,.bak}; fi; done
# 	mkdir -p $(XDG_CONFIG_HOME)
# 	stow -t $(HOME) runcom
# 	stow -t $(XDG_CONFIG_HOME) config
# unlink:
# 	stow --delete -t $(HOME) runcom
# 	stow --delete -t $(XDG_CONFIG_HOME) config
# 	for FILE in $$(\ls -A runcom); do if [ -f $(HOME)/$$FILE.bak ]; then \
# 		mv -v $(HOME)/$$FILE.bak $(HOME)/$${FILE%%.bak}; fi; done
