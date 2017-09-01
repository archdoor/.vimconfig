#!/bin/sh

CUR_DIR=$(pwd)

echo "[配置 vundle...]"
if [ ! -d  ${CUR_DIR}/vim/bundle/vundle ]; then
	git clone https://github.com/gmarik/vundle.git ${CUR_DIR}/vim/bundle/vundle
fi

echo "[配置 .vimrc .gvimrc .vim ...]"
ln -sfT ${CUR_DIR}/vimrc ~/.vimrc
ln -sfT ${CUR_DIR}/gvimrc ~/.gvimrc
ln -sfT ${CUR_DIR}/vim ~/.vim

if true; then

echo "[配置 PS1...]"
grep "\[PS1\]" ~/.bashrc >> /dev/null ||\
(echo -e "\n# [PS1]" >> ~/.bashrc; \
echo "PS1='\[\e[01;32m\]\u@\h\[\e[00m\]:\[\e[01;34m\]\W\[\e[00m\]\$ '" >> ~/.bashrc)


echo "[配置 alias...]"
grep "SELF_ALIAS" ~/.bashrc >> /dev/null ||\
echo -e "\n\
# [SELF_ALIAS]\n\
alias la='ls -a'\n\
alias ll='ls -l'\n\
alias lla='ls -la'\n\
alias vi='vim'\
" >> ~/.bashrc

fi

echo "[配置完成！]"

