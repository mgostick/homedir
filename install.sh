#!/bin/bash

cp .screenrc $HOME/
cp .vimrc $HOME/
cp -Rp .vim $HOME/
cp -Rp .config/terminator $HOME/.config/

cp .dircolors $HOME/
echo 'eval $(dircolors -b $HOME/.dircolors)' >> $HOME/.bashrc
. $HOME/.bashrc

