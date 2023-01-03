#!/bin/sh
########################################
#######      get Vundle Vim     ########
########################################

#Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim;
#plug-in
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
STR1 = `uname -a | grep Mac`
if [$STR1 -n ]; then
	curl https://raw.githubusercontent.com/monkeyKing001/Vim_Settings_LNX/main/.vimrc -o ~/.vimrc
else 
	wget https://raw.githubusercontent.com/monkeyKing001/Vim_Settings_LNX/main/.vimrc -o ~/.vimrc
fi
#vim -c "source %" -c "PluginInstall" -c "q" -c "q"
nvim -c "source %" -c "PluginInstall" -c "q" -c "q"
  # https://raw.githubusercontent.com/monkeyKing001/Vim_Settings_LNX/main/.vimrc
