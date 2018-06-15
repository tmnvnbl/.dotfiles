#!/bin/bash

# a script to "install" the dotfiles from this repo into your user folder.
# This will create symlinks from your user folder to this repo
# e.g. ~/.vimrc will point to .dotfiles/.vimrc

# TODO: first check if the dotfile already exists in user folder -> make a copy in archive
# for now: make copy by default, version by date
export REPO=~/.dotfiles
export HOME=~

echo "REPO=" $REPO
echo "REPO_DOTFILES=" $REPO_DOTFILES
echo "HOME=" $HOME

# for file in $REPO_DOTFILES
# do
# 	cp $HOME/$file REPO/archive/$file
# 	ln -s $REPO/$file $HOME/$file
# done

# test with single file
file=.vimrc
mv $HOME/$file $REPO/archive/${file}_$(date +%F-%T)
ln -s $REPO/$file $HOME/$file


