set number relativenumber
syntax on
set ai "set auto indent
set cindent
set showmatch
set wmnu
set tabstop=4
set hlsearch
set shiftwidth=4
set background=dark

"clipboard 
set clipboard=unnamed " use of OS clipboard
vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
map <C-v> :r ~/.vimbuffer<CR> 

let s:clip = '/mnt/c/Windows/System32/clip.exe'
if executable(s:clip)
	augroup WSLYank
		autocmd!
		autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
	augroup END
endif

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
Plugin 'eslint/eslint'
Plugin 'pandark/42header.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'alexandregv/norminette-vim'

call vundle#end() "required
filetype plugin indent on

"Color Theme
if &term =~ '256color'
	  " disable Background Color Erase (BCE) so that color schemes
	  "   " render properly when inside 256-color tmux and GNU screen.
	  "     " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
	       set t_ut=
	       endif
"etc
set clipboard=unnamed

"airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme= 'badwolf'
set laststatus=2 " turn on bottom bar
let g:airline#extensions#tabline#fnamemod = ':t'


"Keymapping ',' = <Leader>
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

"airline keymapping
" 다음 버퍼로 이동
nmap <leader>. :bnext<CR>
"
" " 이전 버퍼로 이동
nmap <leader>m :bprevious<CR>
"
" 현재 버퍼를 닫고 이전 버퍼로 이동
" 탭 닫기 단축키를 대체한다.
nmap <leader>bq :bp <BAR> bd #<CR>

"NERDTree keymapping
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

nnoremap <C-F> :NERDTreeFind<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>

"Javascript

"42_Header
nmap <f1> :FortyTwoHeader<CR>
autocmd FileType htmldjango let b:fortytwoheader_delimiters=['{#', '#}', '*']
let g:hd42user = 'dokwak'
let g:hdr42mail = 'dokwak@student.42seoul.kr'

"42 Norminette

" Enable norminette-vim (and gcc)
let g:syntastic_c_checkers = ['norminette', 'gcc'] "norminette + gcc
" let g:syntastic_c_checkers = ['gcc'] "gcc
let g:syntastic_aggregate_errors = 1

" Set the path to norminette (do no set if using norminette of 42 mac)
" let g:syntastic_c_norminette_exec = '~/.norminette/norminette.rb'
let g:syntastic_c_norminette_exec = 'norminette'
" Support headers (.h)
let g:c_syntax_for_h = 0
let g:syntastic_c_include_dirs = ['include', '../include', '../../include', 'libft', '../libft/include', '../../libft/include']

" Pass custom arguments to norminette (this one ignores 42header)
let g:syntastic_c_norminette_args = '-R CheckTopCommentHeader'

" Check errors when opening a file (disable to speed up startup time)
let g:syntastic_check_on_open = 1

" Enable error list
let g:syntastic_always_populate_loc_list = 1

" Automatically open error list
let g:syntastic_auto_loc_list = 1

" Skip check when closing
let g:syntastic_check_on_wq = 1
