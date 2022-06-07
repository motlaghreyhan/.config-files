#!/bin/bash

rm -rf ~/.bashrc
cp -f bashrc ~/.bashrc
rm -rf ~/.tmux
cp -rf tmux ~/.tmux
unlink ~/.tmux.conf
ln -s ~/.tmux/tmux.conf ~/.tmux.conf
rm -rf ~/.vim
cp -rf vim ~/.vim
rm -rf ~/.vim_runtime
cp -rf vim_runtime ~/.vim_runtime
rm -rf ~/.viminfo
cp -f viminfo ~/.viminfo
rm -rf ~/.vimrc
cp -f vimrc ~/.vimrc

source ~/.bashrc
