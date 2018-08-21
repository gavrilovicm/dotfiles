set nocompatible              " be iMproved, required
filetype off                  " required

"Maintain undo history between sessions
set undofile
"Make all undo files go in ~/.vim/undodir directory	(optional)
set undodir=~/.vim/undodir 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"ycm plugin
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


set laststatus=2


let g:airline_theme='simple'
set encoding=utf-8
set tabstop=4 
set shiftwidth=4
execute pathogen#infect()
filetype plugin indent on

" autocomplete path
let g:ycm_global_ycm_extra_conf = '/home/miki/.ycm_extra_conf.py'



"================================================
"make every .c file open with skeleton.c code
"path to skeleton.c folder is ~/vim/skeleton.c
" ----------------------------------------------
"code is:
"
"#include<stdio.h>
"#include<stdlib.h>
"
"int main(){
"
"	exit(EXIT_SUCCESS);
"}
"================================================
au BufNewFile *.c 0r ~/vim/skeleton.c | let IndentStyle = "c"
"================================================
"meaning of 0r :
"0 positions the insertion to line zero and the r instructs vim to read in the
"contents of the file at the insertion location.
"================================================

"same command for skeleton code for .pas files
au BufNewFile *.pas 0r ~/vim/skeleton.pas | let IndentStyle = "pas"



"ycm preview window closing after completion
let g:ycm_autoclose_preview_window_after_completion=1

"ycm preview window showing below code
set splitbelow


colorscheme elflord

"relative numbers of lines
set number

let g:airline_powerline_fonts = 1
