#!/bin/sh
########################################
#######      get Vundle Vim     ########
########################################
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim ; STR1 = `uname -a | grep Mac`
if [$STR1 -n ]; then
	curl https://raw.githubusercontent.com/monkeyKing001/Vim_Settings_LNX/main/.vimrc -o ~/.vimrc
else 
	wget https://raw.githubusercontent.com/monkeyKing001/Vim_Settings_LNX/main/.vimrc -o ~/.vimrc
fi
vim -c "source %" -c "PluginInstall" -c "q" -c "q"
  # https://raw.githubusercontent.com/monkeyKing001/Vim_Settings_LNX/main/.vimrc
