#!/bin/bash

read -p "This script will overwrite .vimrc, .bashrc, .zshrc under home directory. Are you sure?(y/n) " -n 1
if [ "$REPLY" == "n" -o "$REPLY" == "N" ];then
    exit 1
fi

rm -rf ~/.vimrc
rm -rf ~/.bashrc
rm -rf ~/.zshrc

ln -s ~/.vim/.vimrc ~/.vimrc
ln -s ~/.vim/.bashrc ~/.bashrc
ln -s ~/.vim/.zshrc ~/.zshrc

cp -rf ~/.vim/scripts/ys-kolo.zsh-theme ~/.oh-my-zsh/themes/ys-kolo.zsh-theme

exit 0
