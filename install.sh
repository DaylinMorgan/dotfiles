#!/bin/bash

DOTFILES_DIR=$(pwd)

CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}

RUNCOMFILES=$(ls -A runcom)
CONFIGDIRS=$(ls -A config)

echo
echo "Symlinking startup scripts"
echo "--------------------------"

for FILE in $RUNCOMFILES; do
    if [ -f $HOME/$FILE -a ! -h $HOME/$FILE ]; then 
		mv -v $(HOME)/$FILE{,.bak}
    fi
	ln -sfv $DOTFILES_DIR/runcom/$FILE $HOME/$FILE
done

echo
echo "Symlinking configs"
echo "------------------"

mkdir -p $CONFIG_HOME

for DIR in $CONFIGDIRS; do
    mkdir -p $CONFIG_HOME/$DIR
    for FILE in $(ls -A config/$DIR); do
        echo "Current file -> $FILE"
        if [[ -f $CONFIG_HOME/$DIR/$FILE ]] && ! [[ -h $CONFIG_HOME/$DIR/$FILE ]]; then 
		    mv -v $CONFIG_HOME/$DIR/$FILE $CONFIG_HOME/$DIR/$FILE.bak
        fi
        echo "renamed? -> $CONFIG_HOME/$DIR/$FILE"
        ln -sfv $DOTFILES_DIR/config/$DIR/$FILE $CONFIG_HOME/$DIR/$FILE
    done
done