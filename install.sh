#!/bin/bash

cp -rf bashrc ~/.bashrc
cp -rf tmux ~/.tmux
mv ~/.tmux.conf ~/.tmux.conf.bak
ln -s ~/.tmux/tmux.conf ~/.tmux.conf
cp -rf vim ~/.vim
cp -rf vim_runtime ~/.vim_runtime
cp -rf viminfo ~/.viminfo
cp -rf vimrc ~/.vimrc

source ~/.bashrc
