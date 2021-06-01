set number
syntax on
set ai "set auto indentin
set showmatch
set wmnu
set tabstop=4
set hlsearch
set background=dark
colorscheme koehler 
set mouse=a
filetype off "required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, requried
Plugin 'VundleVim/Vundle.vim'

"추가


call vundle#end() "required
filetype plugin indent on

if &term =~ '256color'
	  " disable Background Color Erase (BCE) so that color schemes
	  "   " render properly when inside 256-color tmux and GNU screen.
	  "     " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
	       set t_ut=
	       endif
	
	
