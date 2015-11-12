#!/usr/bin/env bash

script_path="$(cd "$(dirname "$0")" ; pwd -P )"

mkdir $HOME/.ssh/ &>/dev/null
ln -is $script_path/.ssh/config $HOME/.ssh/config
chmod 755 $HOME/.ssh/config

ln -is $script_path/.bash_aliases $HOME/.bash_aliases
ln -is $script_path/.bash_functions $HOME/.bash_functions
ln -is $script_path/.bash_profile $HOME/.bash_profile
ln -is $script_path/.bashrc $HOME/.bashrc
ln -is $script_path/.gitconfig $HOME/.gitconfig
ln -is $script_path/.gitglobalignore $HOME/.gitglobalignore
ln -is $script_path/.inputrc $HOME/.inputrc
ln -is $script_path/.profile $HOME/.profile
ln -is $script_path/.tmux.conf $HOME/.tmux.conf
ln -is $script_path/.vimrc $HOME/.vimrc
ln -is $script_path/.Xdefaults $HOME/.Xdefaults
ln -is $script_path/.xmodmap $HOME/.xmodmap
