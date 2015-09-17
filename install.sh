#!/bin/bash

PATH_VIMCONFIG=`pwd`
if [ "`uname`"x = "Linux"x ];then 
	sed -i "s%PATH_VIM%${PATH_VIMCONFIG}%g" vimrc
elif [ "`uname`"x = "Darwin"x ];then
	sed -i "" "s%PATH_VIM%${PATH_VIMCONFIG}%g" vimrc
fi

if [ -f $HOME/.vimrc ];then
	cp $HOME/.vimrc $HOME/.vimrc.old
fi
cp vimrc .vimrc
cp .vimrc $HOME/.vimrc
ln -s ${PATH_VIMCONFIG} ~/.vim

