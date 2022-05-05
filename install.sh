#!/bin/bash

cp -f bashrc ~/.bashrc
cp -rf tmux/* ~/.tmux
unlink ~/.tmux.conf
ln -s ~/.tmux/tmux.conf ~/.tmux.conf
cp -rf vim/* ~/.vim
cp -rf vim_runtime/* ~/.vim_runtime
cp -f viminfo ~/.viminfo
cp -f vimrc ~/.vimrc

source ~/.bashrc
