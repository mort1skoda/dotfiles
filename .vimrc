"
"
"
" echom"~/.vimrc"
"
"
"
"--- ~/.vimrc -------------------------------------------------{{{
" Author: Morty Hawk <mort1skoda@gmail.com>
" Email:  <mort1skoda@gmail.com>
"         <mort1prog@gmail.com>
"
" News:
" <c-j> scroll down
" <c-k> scroll up
" ,ss = :source ~/:vimrc
" ,ebp = edit .bash_profile
" @f create fold
" ,fo create fold
"
"
"
" see dbgvim  in .bash_aliases
" alias dbgvim="vim -V20 2>&1 | tee vim.log.vim
"-------------------------------------------------------------}}}



"--- colorscheme and font ---------------------------------{{{
 on
colorscheme 12my.desert
set guifont=Consolas:h9:cANSI

"################ DRACULA dracula ###########
"packadd! dracula
" enable
"colorscheme dracula
"################ dracula DRACULA ###########
"----------------------------------------------------------}}}



"--- folds -------------------{{{
set foldmethod=marker
nnoremap <Leader>fo i -------------------{{{<cr>"----------------------------}}}<cr><esc>
nnoremap ff za:echo"ff=toggle fold"<cr>   " toogle fold
nnoremap fc zm   " close all
nnoremap fo zr   " open all
"-----------------------------}}}



"--- cursor --------------------{{{
let &t_EI = "\<Esc>[1 q"    " Block cursor in normal mode
let &t_SR = "\<Esc>[3 q"    " Vertikal cursor in insert mode
let &t_SI = "\<Esc>[5 q"    " Horizontal cursr in Replace mode
"-------------------------------}}}



"--- settings --------------------------------------------------------------------{{{
set noswapfile

let mapleader = ","     " mapleader = ,
set nowrap              " allow lines to extende as far as the line goes.
set textwidth=200       " set a line limit before wrap.
set list                " $ at line ending
set nospell             " turn of spell checking.


" Expand aliases.
let $BASH_ENV = "~/.bash_aliases"


" Disable compatibility with vi which can cause unexpected issues.
set nocompatible
" Do not create .swp files
" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on
" Enable plugins and load plugin for the detected file type.
filetype plugin on
" Load and indent file for the detected file type.
filetype indent on
" Add numbers to each line on the left-hand side.
set number
" turn relative line numbers on
set relativenumber
" Highlight cursor line underneath the cursor horizontally.
set cursorline
" Highlight cursor line underneath the cursor vertically.
set cursorcolumn
"
" Set shift width to 4 spaces.
set shiftwidth=4
" Set tab width to 4 columns.
set tabstop=4
" Use space characters instead of tabs.
set expandtab
" Do not save backup files.
set nobackup
" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=16
" Incrementally highlight matching characters as you type.
set incsearch
" Ignore capital letters during search.
set ignorecase
" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase
" Show partial command you type in the last line of the screen.
set showcmd
" Show the mode you are on the last line.
set showmode
" Show matching words during a search.
set showmatch
" Use highlighting when doing a search.
set hlsearch
" Set the commands to save in history default number is 20.
set history=1000
" Enable auto completion menu after pressing TAB.
set wildmenu
" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest
" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx












"------------------------------------------------------------------------------}}}



"--- movements -----------------------------------------------------------------{{{
nnoremap 0 0:echo"0 = beginning of line"<cr>
nnoremap $ $:echo"$ = end of line"<cr>
nnoremap h h:echo "-- NORMAL -- h"<cr>
nnoremap j j:echo "-- NORMAL -- j"<cr>
nnoremap k k:echo "-- NORMAL -- k"<cr>
nnoremap l l:echo "-- NORMAL -- l"<cr>

nnoremap o o<esc>:echo"o = open line below"<cr>
nnoremap O O<esc>:echo"O = Open line above"<cr>

" speed up scrolling
nnoremap <C-j> 3<C-e>:echo 'ctrl-j = scroll dwn'<CR>
nnoremap <C-k> 3<C-y>:echo 'ctrl-j = croll up'<CR>

nnoremap gg gg:echo"gg=top of page"<cr>
nnoremap G G:echo"G=bottom of page"<cr>
"-------------------------------------------------------------------------------}}}



"--- panes ------------------------------------------------------{{{
set splitright

nnoremap <Leader>vv :vs<CR>
nnoremap <Leader>hh :sp<CR>

" ctrl-hjkl navigate panes
nnoremap <C-l> <C-w>l:echo 'nav pane right:' expand('%:p')<CR>
nnoremap <C-h> <C-w>h:echo 'nav pane left:' expand('%:p')<CR>
"nnoremap <C-j> <C-w>j:echo 'nav pane dwn:' expand('%:p')<CR>
"nnoremap <C-k> <C-w>k:echo 'nav pane up:' expand('%:p')<CR>

" Resize panes: SHIFT-L and SHIFT-H
nnoremap <S-L> 2<c-w><:echo 'Resize pane SHIFT-L=>'<CR>
nnoremap <S-H> 2<c-w>>:echo 'Resize pane SHIFT-H=<'<CR>
nnoremap <S-J> <c-w>+:echo 'Resize pane SHIFT-J=dwn'<CR>
nnoremap <S-K> <c-w>-:echo 'Resize pane SHIFT-K=up'<CR>
"
" move cursor in insert mode with shift hjkl
"inoremap <S-L> <ESC>lli
"inoremap <S-H> <ESC>i
"inoremap <S-J> <ESC>jli
"inoremap <S-K> <ESC>kli
"
"----------------------------------------------------------------}}}



"--- yank delete change paste undo -------------------------------------{{{

nnoremap yy yy
nnoremap Y  y$:echo'Normal  Y=Yank from cursor to end of line'<CR>
nnoremap y0 y0
nnoremap yw yw:echo'Normal yw=yank word'<cr>
nnoremap yt yt
nnoremap yf yf
nnoremap yi yi
nnoremap ya ya
"NB! yt and yf can not have an echo statment after them.

nnoremap dd dd:echo'Normal dd=delete line'<cr>
nnoremap D  d$:echo'Normal  D=Delete from cursor to end of line'<cr>
nnoremap d0 d0:echo'delete for cursor til beginning of line'
nnoremap dw dw:echo'delete til beginning of next word'<cr>
nnoremap de de:ehoc'delete til end of word'<cr>
nnoremap df df
nnoremap dt dt
nnoremap di di
nnoremap da da
" df = delete including given char.
" dt = delete til but not including given char.
" di = delete inner
" da = delete other


" make cw behave like dw and yw
"nnoremap cw dwi

nnoremap C c$
":echo'C = change from cursor to end of line'<cr>

" P = Paste, used after yank or delete 
nnoremap P P:echo'P = Paste line abowe / Paste token at cursor'<cr>
nnoremap p p:echo'p = paste line below / paste token after cursor'<cr>

" Shift-x insert space, only x delete one character.
nnoremap X i<space><esc>:echom"-- NORMAL -- X=shift-x=insert space"<cr>
nnoremap x x:echom"-- NORMAL -- x=delete one char"<cr>

"h jh    h          kj  k

nnoremap <space> i<space><esc>:echom"-- NORMAL -- space=insert space"<cr> 
nnoremap <tab> i<tab><esc>:echo"-- NORMAL -- tab=insert tab=4spaces"<cr>

nnoremap u u
"---------------------------------------------------------------------------}}}
"
"
"
"--- search and replace ----------------------------------{{{"
"
" ctrl-x to search and replace.
nnoremap <C-x> :%s/
" ctrl-f find
"nnoremap <C-f> /

"---------------------------------------------------------}}}



"--- mapleader , -------------------------------------------------------------------------{{{

let $BASH_PROFILE = '~/.bash_profile'
let $BASHRC  = '~/.bashrc'
let $BASH_ALIASES = '~/.bash_aliases'
let $VIMRC   = '~/.vimrc'
let $VIFMRC  = '~/.vifm/vifmrc.vim' 
let $TMUX    = '~/.tmux.conf'

nnoremap <Leader>ebp :vs $BASH_PROFILE<cr>:echo expand('%:p')<cr>
nnoremap <Leader>eb :vs $BASHRC <CR>:echo expand('%:p')<CR>
nnoremap <Leader>ea :vs $BASH_ALIASES<CR>:echo expand('%:p')<CR>
nnoremap <Leader>ev :vs $VIMRC  <CR>:echo expand('%:p')<CR>
nnoremap <Leader>ef :vs $VIFMRC <CR>:echo expand('%:p')<CR>
nnoremap <Leader>et :vs $TMUX   <CR>:echo expand('%:p')<CR>

nnoremap <Leader>mh :!make help<CR>
nnoremap <Leader>mv :!make vars<CR>
nnoremap <Leader>mc :!make clean<CR>
nnoremap <Leader>mm :!make all<CR>
nnoremap <Leader>mr :!make run<CR>
nnoremap <Leader>md :!make dbg<CR>

" open vim integrated file explorer
" TODO: add support for lf !!!
nnoremap <Leader>ex :Lexplore<CR>7<C-w><

" ,ch = leader comment hash
nnoremap <Leader>ch I#<ESC>j
" ,ca = leader comment apostrophe
nnoremap <Leader>ca I"<ESC>j
" ,cc = leader comment c source code
nnoremap <Leader>cc I//<ESC>j
"-----------------------------------------------------------------------------------------}}}



"--- @ macros --------------------------------------------------------{{{
let @f = "i -------------{{{\<Esc>jI\"-----------------------------}}}\<Esc>"

" @c comment C line  //
let @c = "I// \<Esc>j"
"
"" @u uncomment C line
let @u = "I\<Del>\<Del>\<Del>\<Esc>j"
"
"" @p printf("
let @p = "Iprintf(\""
"
"" @f for(int i = 0; i < 10; i++){
"let @o = "I\<TAB>for(int i = 0; i < 10; i++){\<esc>I\<tab>\<tab>"
"---------------------------------------------------------------------}}}



"--- scripts autogroup autocmd ------------------------------{{{
" This will enable code folding.
" Use the marker method of folding.
"augroup filetype_vim
    "autocmd!
    "autocmd FileType vim setlocal foldmethod=marker
"augroup END

" Display cursorline and cursorcolumn ONLY in active window.
"augroup cursor_off
    "autocmd!
    "autocmd WinLeave * set nocursorline nocursorcolumn
    "autocmd WinEnter * set cursorline cursorcolumn
"augroup END
"------------------------------------------------------------}}}



"--- esc save source quit ------------------------------------------------------{{{
set noesckeys
set ttimeout
set ttimeoutlen=600
set timeoutlen=500
nnoremap <esc> <esc>:echo"-- NORMAL -- esc"<cr>
inoremap <esc> <esc>l:echo"-- NORMAL -- esc"<cr>
vnoremap <esc> <esc>:echo"-- NORMAL -- esc"<cr>
cnoremap <esc> <esc>:echo"-- NORML -- esc"<cr>

nnoremap <C-s> <esc>:w<cr>
inoremap <C-s> <esc>:w<cr>l
vnoremap <C-s> <esc>:w<cr>
cnoremap <C-s> <esc>:w<cr>

nnoremap <Leader>ss :source ~/.vimrc<cr>:echo"sourced: ~/.vimrc"<cr>

nnoremap <c-q> :wq<cr>
inoremap <c-q> <ESC>:wq<cr>
vnoremap <c-q> <ESC>:wq<cr>
cnoremap <c-q> <ESC>:wq<cr>
" from Normal mode you can type q followed by enter to quit without saving
nnoremap q :q<cr><esc>
"----------------------------------------------------------------------------------}}}



"--- statusline -----------------------------------{{{
set statusline=
set laststatus=2
"set statusline+=%F
"set statusline+=%=
"set statusline+=row:%l\ col:%c\ percent:%p%%
"--------------------------------------------------}}}



