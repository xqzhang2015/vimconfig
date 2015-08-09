#!/bin/bash

PATH_VIMCONFIG=`pwd`
sed -i "s%PATH_VIM%${PATH_VIMCONFIG}%g" vimrc

cp $HOME/.vimrc $HOME/.vimrc.old
cp vimrc $HOME/.vimrc
