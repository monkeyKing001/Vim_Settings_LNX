# Vim_Settings_LNX

## Quick Start

### Introduction:

Installation requires Git and triggers git clone for each configured repository to ~/.vim/bundle/ by default. Curl is required for search.

If you are using Windows, go directly to Windows setup. If you run into any issues, please consult the FAQ. See Tips for some advanced configurations.

Using non-POSIX shells, such as the popular Fish shell, requires additional setup. Please check the FAQ.

### Set up Vundle:

  `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

### Configure Plugins:

Put this at the top of your .vimrc to use Vundle. Remove plugins you don't need, they are for illustration purposes.

    set nocompatible              " be iMproved, required
    filetype off                  " required

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    "  let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    " The following are examples of different formats supported.
    " Keep Plugin commands between vundle#begin/end.
    " plugin on GitHub repo
    Plugin 'tpope/vim-fugitive'
    " plugin from http://vim-scripts.org/vim/scripts.html
    " Plugin 'L9'
    " Git plugin not hosted on GitHub
    Plugin 'git://git.wincent.com/command-t.git'
    " git repos on your local machine (i.e. when working on your own plugin)
    Plugin 'file:///home/gmarik/path/to/plugin'
    " The sparkup vim script is in a subdirectory of this repo called vim.
    " Pass the path to set the runtimepath properly.
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    " Install L9 and avoid a Naming conflict if you've already installed a
    " different version somewhere else.
    " Plugin 'ascenator/L9', {'name': 'newL9'}

    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required
    " To ignore plugin indent changes, instead use:
    "filetype plugin on
    "
    " Brief help
    " :PluginList       - lists configured plugins
    " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
    " :PluginSearch foo - searches for foo; append `!` to refresh local cache
    " :PluginClean      - confirms removal of unused plugins; append `!` to auto-     approve removal
    "
    " see :h vundle for more details or wiki for FAQ
    " Put your non-Plugin stuff after this line

### Install Plugins:

Launch vim and run :PluginInstall

To install from command line: vim +PluginInstall +qall

### (optional) 
For those using the fish shell: add set shell=/bin/bash to your .vimrc

## checked working 01. 06. '21

## setting 

    set number " set line number
    set nocompatible " be iMproved, required
    set title " 제목을 표시
    set wmnu " tab 자동완성시 가능한 목록을 보여줌
    set tabstop=4 " tab을 4칸으로

    filetype off " required

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

## 
출처: https://redcoder.tistory.com/114 [로재의 개발 일기]
