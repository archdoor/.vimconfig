#!/bin/sh

CUR_DIR=$(pwd)

echo "[配置 .vimrc .gvimrc .vim ...]"
ln -sfT ${CUR_DIR}/vim ~/.vim
ln -sfT ${CUR_DIR}/vim/vimrc ~/.vimrc

echo "[配置 PS1...]"
grep "\[PS1\]" ~/.bashrc >> /dev/null ||\
(echo "\n# [PS1]" >> ~/.bashrc; echo "PS1='\[\e[01;32m\]\u@\h:\W\[\e[00m\]\$ '" >> ~/.bashrc)

echo "[配置 alias...]"
grep "SELF_ALIAS" ~/.bashrc >> /dev/null ||\
echo "\n\
# [SELF_ALIAS]\n\
alias la='ls -a'\n\
alias ll='ls -l'\n\
alias llh='ls -lh'\n\
alias lla='ls -la'\n\
alias llah='ls -lah'\n\
alias vi='vim'\
" >> ~/.bashrc

echo "[配置 vundle...]"
if [ ! -d  ${CUR_DIR}/vim/bundle/vundle ]; then
	git clone https://github.com/gmarik/vundle.git ${CUR_DIR}/vim/bundle/vundle
fi

echo "[配置完成！]"

