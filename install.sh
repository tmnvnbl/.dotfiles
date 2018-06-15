#!/bin/bash

# a script to "install" the dotfiles from this repo into your user folder.
# This will copy the dotfiles from this repo to your home folder,
# while making a backup in ./archive

# TODO: first check if the dotfile already exists in user folder -> make a copy in archive
# for now: make copy by default, version by date
export REPO=~/.dotfiles
export REPO_DOTFILES=$(find dotfiles -type f)
export HOME=~

echo "Installing the following dotfiles:"
echo $REPO_DOTFILES
echo "into " $HOME

# make an archive folder to backup original dotfiles
mkdir $REPO/archive

## test with single file
# file=.vimrc
# mv $HOME/$file $REPO/archive/${file}_$(date +%F-%T)
# ln -s $REPO/$file $HOME/$file

for full_path_to_file in $REPO_DOTFILES
do
	name=$(basename "$full_path_to_file")
	cp $HOME/$name $REPO/archive/${name}.$(date +%F-%T)
	rm $HOME/$name
	cp  $full_path_to_file $HOME/$name
done


