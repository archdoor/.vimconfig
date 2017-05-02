#!/bin/sh

CUR_DIR=$(pwd)

echo "配置 vundle..."
if [ ! -d  ${CUR_DIR}/vim/bundle/vundle ]; then
	git clone https://github.com/gmarik/vundle.git ${CUR_DIR}/vim/bundle/vundle
fi

echo "配置 .vimrc..."
ln -sfT ${CUR_DIR}/vimrc ~/.vimrc

echo "配置 .gvimrc..."
ln -sfT ${CUR_DIR}/gvimrc ~/.gvimrc

echo "配置 .vim..."
ln -sfT ${CUR_DIR}/vim ~/.vim

echo "配置 xfce4-terminal..."
cp -f ${CUR_DIR}/vim/xfce4-terminal/terminalrc ~/.config/xfce4/terminal/

echo "配置 vim color..."
if [ -d  ${CUR_DIR}/vim/bundle/vim-colors-solarized ]; then
	ln -sfT ${CUR_DIR}/vim/bundle/vim-colors-solarized/colors/solarized.vim ${CUR_DIR}/vim/colors/solarized.vim
else
	echo -e "\tPlugin vim-colors-solarized is not exist!"
fi

echo "配置 xfce4-terminal dir-colors..."
if [ -d  ${CUR_DIR}/vim/bundle/dircolors-solarized ]; then
	grep "DIR_COLORS" ~/.bashrc >> /dev/null ||\
	echo -e "\
	\n# [DIR_COLORS]\
	\neval \`dircolors ~/.vim/bundle/dircolors-solarized/dircolors.256dark\`\
	\n" >> ~/.bashrc
else
	echo -e "\tPlugin dir-colors is not exist!"
fi

echo "配置完成！"

