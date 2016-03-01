#!/usr/bin/env bash

function link()
{
  src_path=$1
  dst_path=$2
  filename=$3
  ln -is $src_path/$filename $dst_path/$filename
  chmod 755 $dst_path/$filename
}

script_path="$(cd "$(dirname "$0")" ; pwd -P )"

mkdir $HOME/.ssh/ &>/dev/null
mkdir -p $HOME/.terminfo/r &>/dev/null

link $script_path/.ssh $HOME/.ssh config
link $script_path/.terminfo/r $HOME/.terminfo/r rxvt-unicode-256color
link $script_path $HOME .bash_aliases
link $script_path $HOME .bash_functions
link $script_path $HOME .bash_profile
link $script_path $HOME .bashrc
link $script_path $HOME .gitconfig
link $script_path $HOME .gitglobalignore
link $script_path $HOME .inputrc
link $script_path $HOME .profile
link $script_path $HOME .tmux.conf
link $script_path $HOME .vimrc
link $script_path $HOME .Xdefaults
link $script_path $HOME .xmodmap
