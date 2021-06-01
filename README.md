# Vim_Settings_LNX


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
