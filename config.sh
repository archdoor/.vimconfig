#!/bin/sh

CUR_DIR=$(pwd)

echo "config the plugin vundle..."
if [ ! -d  ${CUR_DIR}/vim/bundle/vundle ]; then
	git clone https://github.com/gmarik/vundle.git ${CUR_DIR}/vim/bundle/vundle
else
	echo -e "\tPlugin vundle is already exist!"
fi

echo "config the softlink .vimrc..."
ln -sfT ${CUR_DIR}/vimrc ~/.vimrc

echo "config the softlink .gvimrc..."
ln -sfT ${CUR_DIR}/gvimrc ~/.gvimrc

echo "config the softlink .vim..."
ln -sfT ${CUR_DIR}/vim ~/.vim

echo "config the xfce4-terminal..."
cp -f ${CUR_DIR}/vim/terminal/terminalrc ~/.config/xfce4/terminal/

echo "all configs done!"

