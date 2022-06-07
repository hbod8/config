#!/bin/sh

#
# Install Command Line tools
# Harry Saliba 2022
#

APT="apt"
APTARGS="install -y"
PACMAN="pacman"
PACMANARGS="-S"
YUM="yum"
YUMARGS="install -y"
PKS=""
CMDS=""

check_install () {
  command -v $1
}

require () {
  if check_install "$1" > /dev/null 2>&1
  then
    echo "$1 is installed."
  else
    echo "$1 is not installed."
    PKS="${PKS}$1 "
  fi
}

install () {
  echo "found $1"
  sudo $1 $2 $3
  eval "$CMDS"
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

if ls ~/powerlevel10k > /dev/null 2>&1
then
  echo "powerlevel10k theme is installed."
else
  echo "powerlevel10k theme is not installed."
  CMDS="$CMDS git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k;"
fi

if test "$PKS"
then
  echo "attempting to install $PKS using a package manager..."
  if check_install "$APT" > /dev/null 2>&1
  then
    install "$APT" "$APTARGS" "$PKS"
  elif check_install "$YUM" > /dev/null 2>&1
  then
    install "$YUM" "$YUMARGS" "$PKS"
  elif check_install "$PACMAN" > /dev/null 2>&1
  then
    install "$PACMAN" "$PACMANARGS" "$PKS"
  else
    echo "no package manager found, install these packages:"
    echo "$PKS"
    echo "and run:"
    echo "$CMDS"
  fi
else
  echo "all dependencies installed."
fi