#!/bin/bash

CURRENT_DIR=`pwd -P`

mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}

# LINK CONFIGURATIONS
echo LINKING CONFIGURATIONS...
rm -fr ~/.tmux.conf
ln -s $CURRENT_DIR/tmux.conf $HOME/.tmux.conf

rm -fr ~/.zshrc
ln -s $CURRENT_DIR/zshrc $HOME/.zshrc

rm -fr $XDG_CONFIG_HOME/kitty
ln -s $CURRENT_DIR/kitty $XDG_CONFIG_HOME/kitty

rm -fr $XDG_CONFIG_HOME/nvim
ln -s $CURRENT_DIR/nvim-config $XDG_CONFIG_HOME/nvim

rm -fr ~/.gitconfig
ln -s $CURRENT_DIR/gitconfig $HOME/.gitconfig

echo CONFIGURATIONS LINKED.
