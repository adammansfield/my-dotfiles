#!/usr/bin/env bash

function link()
{
  source_directory=$1
  destination_directory=$2
  filename=$3
  permissions=$4

  destination_file=$destination_directory/$filename
  if [ -L $destination_file ]; then
    ln_options=-fs
  else
    ln_options=-is
  fi
  ln $ln_options $source_directory/$filename $destination_file
  chmod $permissions $destination_file
}

script_path="$(cd "$(dirname "$0")" ; pwd -P )"

mkdir $HOME/.ssh/ &>/dev/null
mkdir -p $HOME/.terminfo/r &>/dev/null

link $script_path/.ssh $HOME/.ssh config 600
link $script_path/.terminfo/r $HOME/.terminfo/r rxvt-unicode-256color 600
link $script_path $HOME .bash_aliases 755
link $script_path $HOME .bash_functions 755
link $script_path $HOME .bash_profile 755
link $script_path $HOME .bashrc 755
link $script_path $HOME .dockerenv 755
link $script_path $HOME .gitconfig 755
link $script_path $HOME .gitglobalignore 755
link $script_path $HOME .inputrc 755
link $script_path $HOME .profile 755
link $script_path $HOME .tmux.conf 755
link $script_path $HOME .vimrc 755
link $script_path $HOME .Xdefaults 755
link $script_path $HOME .xmodmap 755
