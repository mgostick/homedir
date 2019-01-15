#!/bin/bash

cp .screenrc $HOME/
cp .vimrc $HOME/
cp -Rp .vim $HOME/
cp -Rp .config/terminator $HOME/.config/

sudo cp -Rp fonts/Hack /usr/share/fonts/truetype/

cp .dircolors $HOME/
echo 'eval $(dircolors -b $HOME/.dircolors)' >> $HOME/.bashrc
. $HOME/.bashrc

