#!/bin/sh

CUR_DIR=$(pwd)

echo "设置 vundle..."
if [ ! -d  ${CUR_DIR}/vim/bundle/vundle ]; then
	git clone https://github.com/gmarik/vundle.git ${CUR_DIR}/vim/bundle/vundle
else
	echo -e "\t插件 vundle 已经存在！"
fi

echo "设置 .vimrc..."
ln -sfT ${CUR_DIR}/vimrc ~/.vimrc

echo "设置 .gvimrc..."
ln -sfT ${CUR_DIR}/gvimrc ~/.gvimrc

echo "设置 .vim..."
ln -sfT ${CUR_DIR}/vim ~/.vim

echo "设置 xfce4-terminal..."
cp -f ${CUR_DIR}/vim/xfce4-terminal/terminalrc ~/.config/xfce4/terminal/

echo "设置 xfce4-terminal dir-colors..."
if [ -d  ${CUR_DIR}/vim/bundle/dircolors-solarized ]; then
	echo -e "\
	\n# [DIR_COLORS]\
	\neval \`dircolors ~/.vim/bundle/dircolors-solarized/dircolors.256dark\`\
	\n" >> ~/.bashrc
else
	echo -e "\tPlugin dir-colors is not exist!"
fi

echo "设置完成！"

