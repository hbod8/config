#!/bin/sh

#
# Install Command Line tools
# Harry Saliba 2022
#

PKS=""
CMDS=""

function require {
  if which $1 &> /dev/null
  then
    echo "$1 is installed."
  else
    echo "$1 is not installed."
    PKS="${PKS} $1"
  fi
}

require "bash"
require "zsh"
require "git"
require "vim"
require "exa"
require "bat"
require "rg"
require "fzf"
require "zoxide"
require "mc"

if ls ~/powerlevel10k > /dev/null
then
  echo "powerlevel10k theme is installed."
else
  echo "powerlevel10k theme is not installed."
  CMDS="$CMDS git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k;"
fi

echo "attempting to install using a package manager..."

if which apt &> /dev/null
then
  echo "found apt"
  sudo apt install -y $PKS
  eval $CMDS
elif which yum &> /dev/null
then
  echo "found yum"
  sudo yum install -y $PKS
  eval $CMDS
elif which pacman &> /dev/null
then
  echo "found pacman"
  sudo pacman -S --noconfirm $PKS
  eval $CMDS
else
  echo "no package manager found, install these packages:"
  echo $PKS
  echo "and run:"
  echo $CMDS
fi