<<<<<<< HEAD
# vim_configs Guide lines
## 0. Preface 
### 0-1. Purpose
There are some needs of using VIM while participating '42Seoul'.
Since all systems in '42Seoul' are in environment of 'Mac OS', some kind of standard should be established.
I don't know which thing I can do at '42Seoul', but using VIM as IDE must be helpful.
By this time, I would like to set standards for VIM.

### 0-2. notations
#### 0-2.1. $
* commands at the bash shell
#### 0-2.2. :
* commands at the VIM shell
***
## 1. How to patch .vimrc
### 1-0. Run auto-script.sh
#### There is 'auto-script.sh' file. Download it
#### You can run it by double click
#### or
```bash
./auto-script.sh
```
#### Then rest of 1-1~3 will finish.

### 1-1. Install Vundle
```bash
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

### 1-2. Download .vimrc file
For Mac OS
```bash
$ curl https://raw.githubusercontent.com/LeeSH825/vim-_configs/master/.vimrc -o ~/.vimrc
```
For Linux
```bash
$ wget https://raw.githubusercontent.com/LeeSH825/vim-_configs/master/.vimrc -o ~/.vimrc
```
### 1-3. Install Plugins
```bash
$ vim -c "source %" -c "PluginInstall" -c "q" -c "q"
```
or you can just use 
```
:source % , :PluginInstall , :q! , :q!
```
***
## 2. Plugins
### 2-1. VundleVim/Vundle.vim 
* Plug-in manager for VIM
- *More Informations on https://github.com/VundleVim/Vundle.vim*

### 2-2. tpope/vim-fugitive
* Enable to use git commands in VIM
- *More Informations on https://github.com/tpope/vim-fugitive*

### 2-3. tpope/vim-sensible
* basic options for VIM
- *More Informations on https://github.com/tpope/vim-sensible*

### 2-4. preservim/nerdtree
* file tree explorer
- *More Informations on https://github.com/preservim/nerdtree*

### 2-5. vim-syntastic/syntastic
* syntax checker
- *More Informations on https://github.com/vim-syntastic/syntastic*

### 2-6. preservim/nerdcommenter
* helping to comment more easily
- *More Informations on https://github.com/preservim/nerdcommenter*

### 2-7 zxqfl/tabnine-vim
* Auto-complete framework
- *More Informations on https://tabnine.com/semantic*

### 2-8. nathanaelkane/vim-indent-guides
* displaying indent levels visually
- *More Informations on https://github.com/nathanaelkane/vim-indent-guides*

### 2-9. vim-airline/vim-airline
* More informations on status bar
- *More Informations on https://github.com/vim-airline/vim-airline*

### 2-10. airblade/vim-gitgutter
* indicating changed lines for GIT things
- *More Informations on https://github.com/airblade/vim-gitgutter*

### 2-11. nanotech/jellybeans.vim
* color theme "jellybeans"
- *More Informations on https://github.com/nanotech/jellybeans.vim*

### 2-12 kien/ctrlp.vim
* helping to open files more easily, and more quickly
- *More Informations on https://github.com/kien/ctrlp.vim*

### 2-13 terryma/vim-multiple-cursors
* enable to select multiple things
- *More Informations on https://github.com/terryma/vim-multiple-cursors*

### 2-14 Raimondi/delimitMate
* auto-completion for quotes, parens, brackets, etc
- *More Informations on https://github.com/Raimondi/delimitMate*

### 2-15 terryma/vim-smooth-scroll
* Make scrolling in VIM more pleasant
- *More Informations on https://github.com/terryma/vim-smooth-scroll*
***
## 3. Vim local settings
### 3-1. set nocompatible
* enable to move cursors with arrow keys

### 3-2. set number
* indicate the line number

### 3-3. set cindent
* indenting with c-style

### 3-4. set autoindent
* auto indenting

### 3-5. set smartindent
* smart indenting

### 3-6. set hlsearch
* highlight on search results	

### 3-7. set tabstop=4
* set tab key to "4" space

### 3-8. set shiftwidth=4
* set shift key to "4" space

### 3-9. set mouse=a
* enable using mouse

### 3-10. set cursorline
* highlight on current working line

### 3-11. color jellybeans
* set color theme to "jellybeans"
***
## 4. Customization
* If you are willing to customize this .vimrc file, you have to refer bash style coding guide
* You might refer guide from here : https://lug.fh-swf.de/vim/vim-bash/StyleGuideShell.en.pdf
* Don't forget ':PluginClean' whenever you have changes in Plugins
=======
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
>>>>>>> 730ff89ce75646791aecf42cf6ad20d524b7dc30
