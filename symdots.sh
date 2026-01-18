#!/usr/bin/env bash

# DIR=$HOME/workspace/repos/.dotfiles/
# DEST=$HOME/.config/

if [ ! -d "$DEST" ];then
    echo "Directory $DEST doesn't exist"
    mkdir "$DEST"
    echo "Directory $DEST created"
fi
echo "Choose an option:"
echo "Type 1 for symlink files"
echo "Type 2 for unlink files"
echo

read choice

if [[ "$choice" == "1" ]]; then
    echo "Creating symlinks:"
    ln -srv $DIR/* $DEST
    echo
    echo "ls $DEST:"
    ls $DEST
elif [[ "$choice" == "2" ]]; then
    echo "Deleting symlinks"
    find $DEST -maxdepth 1 -type l -delete
    echo
    echo "ls $DEST:"
    ls $DEST
    echo
    echo "ls $DIR:"
    ls $DIR
else
    echo "Invalid choice"
fi

