" ~/.vimrc
set nocompatible
filetype on
filetype plugin on
filetype indent on

syntax on
colorscheme elflord

set number
set relativenumber
" set cursorline
" set cursorcolumn

set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set hlsearch
set history=1000
set wildmenu
set wildmode=list:longest

" PLUGINS --- {{{

call plug#begin('~/.vim/plugged')
    Plug 'dense-analysis/ale'
    "Plug 'preservim/nerdtree'
call plug#end()

" }}}

" MAPPINGS --- {{{
"esc timing

" }}}

" VIMSCRIPT --- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscript code goes here.

" }}}

""" SUBSTITUTE """ {{{
"To substitute new for the first old in a line type    :s/old/new
"To substitute new for all 'old's on a line type	   :s/old/new/g
"To substitute phrases between two line #'s type	   :#,#s/old/new/g
"To substitute all occurrences in the file type	   :%s/old/new/g
"To ask for confirmation each time add 'c'		   :%s/old/new/gc
" }}}
