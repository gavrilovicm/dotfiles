set nocompatible              " be iMproved, required
filetype off                  " required

"Maintain undo history between sessions
set undofile
"Make all undo files go in ~/.vim/undodir directory	(optional)
set undodir=~/.vim/undodir 

"avoid problems with fish shell
set shell=bash

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"ycm plugin
Plugin 'Valloric/YouCompleteMe'

"smart brackets
Plugin 'jiangmiao/auto-pairs'

"plugin for highlight search
Plugin 'haya14busa/incsearch.vim'

set scrolloff=9

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"extension for smart tabline
let g:airline#extensions#tabline#enabled = 1

set laststatus=2

"-----------------------------------
"plugins for search highlights in vim
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
"-----------------------------------

"making sessions with one keystroke
"quick write session with F2 key
map <F2> :mksession! ~/vim_session <cr>

"loading session with F3 key
map <F3> :source ~/vim_session <cr>


let g:airline_theme='simple'
set encoding=utf-8
set tabstop=4 
set shiftwidth=4
set nowrap
set sidescroll=1

"vsplit opens new tab right of current one
set splitright

"ycm preview window showing below code
"also split opens new tabs below current one
set splitbelow

execute pathogen#infect()
filetype plugin indent on

" autocomplete path
let g:ycm_global_ycm_extra_conf = '/home/miki/.ycm_extra_conf.py'


"================================================
"make every .c and .cpp file open with skeleton.c code
"path to skeleton.c and skeleton.cpp folder is ~/vim/skeleton.(c|cpp)
"================================================
au BufNewFile *.c 0r ~/vim/skeleton.c | let IndentStyle = "c"
au BufNewFile *.cpp 0r ~/vim/skeleton.cpp | let IndentStyle = "c"
"================================================
"meaning of 0r :
"0 positions the insertion to line zero and the r instructs vim to read in the
"contents of the file at the insertion location.
"================================================

"same command for skeleton code for .pas and .py files
au BufNewFile *.pas 0r ~/vim/skeleton.pas | let IndentStyle = "pas"
au BufNewFile *.py 0r ~/vim/skeleton.py | let IndentStyle = "py"

"making .tmux.conf files open with tmux.vim highlighting
au BufRead,BufNewFile *.tmux* set filetype=tmux

"setting up syntax highlight for bison
augroup bison
	au!
	autocmd BufNewFile,BufRead *.ypp   set syntax=yacc
augroup END

" setting syntax highlight for prolog
	autocmd BufNewFile,BufRead *.pro set syntax=prolog

"ycm preview window closing after completion
let g:ycm_autoclose_preview_window_after_completion=1



colorscheme elflord

"numbers of lines
set number

let g:airline_powerline_fonts = 1
