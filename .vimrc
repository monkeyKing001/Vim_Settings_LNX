set number relativenumber
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
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


call vundle#end() "required
filetype plugin indent on

if &term =~ '256color'
	  " disable Background Color Erase (BCE) so that color schemes
	  "   " render properly when inside 256-color tmux and GNU screen.
	  "     " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
	       set t_ut=
	       endif

"Keymapping
let mapleader=","
nnoremap <Leader>rc :rightbelow vnew $MYVIMRC<CR>

" Key Setting - resize windows
nnoremap <silent> <Leader>= :exe "resize +3"<CR>
nnoremap <silent> <Leader>- :exe "resize -3"<CR>
nnoremap <silent> <Leader>] :exe "vertical resize +8"<CR>
nnoremap <silent> <Leader>[ :exe "vertical resize -8"<CR>
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>_ :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>} :exe "vertical resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>{ :exe "vertical resize " . (winheight(0) * 2/3)<CR>

"NERDTree
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

nnoremap <C-F> :NERDTreeFind<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>
