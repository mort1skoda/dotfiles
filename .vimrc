" echom"~/.vimrc"

"--- ~/.vimrc -------------------------------------------------{{{
" Author: Morty Hawk <mort1skoda@gmail.com>
" Email:  <mort1skoda@gmail.com>
"         <mort1prog@gmail.com>

" News:
" <S-j> down {
" <S-k> up }
" <S-h> = 0 = beginning of line
" <S-l> = $ = end of line

" <c-j> toggle panes
" <c-k> toggle panes
" <c-h> resize panes L
" <c-l> resize panes H
" ,ss = :source ~/:vimrc

" ,ezp = edit .zprofile
" zf create fold

" TODO:
" Add support for ,lf   <leader>lf

" Debug:
" see dbgvim in .bash_aliases
" alias dbgvim="vim -V20 2>&1 | tee vim.log.vim
"-------------------------------------------------------------}}}

"--- folds -------------------{{{
set foldmethod=marker
nnoremap ff za:echo"ff=fold toggle"<cr>
nnoremap fc zm:echo"fc=folds close all"<cr>
nnoremap fo zr:echo"fo=folds open all"<cr>
vnoremap zf zf:echo"zf=create fold"<cr>
"-----------------------------}}}

"--- cursor --------------------{{{
let &t_EI = "\<Esc>[1 q"    " Block cursor in normal mode
let &t_SR = "\<Esc>[3 q"    " Vertikal cursor in insert mode
let &t_SI = "\<Esc>[5 q"    " Horizontal cursr in Replace mode
"-------------------------------}}}

"--- settings --------------------------------------------------------------------{{{
let mapleader = ","     " mapleader = ,
set noswapfile          " no not create ~ files
set nobackup            " do not save backup files
set nocompatible        " do not be compatible with old vi
set nolist              " mark line endings with a $ (dollar sign)
set nowrap              " allow lines to extende as far as the line goes.
set textwidth=200       " set a line limit before wrap.
set nospell             " turn of spell checking.
set scrolloff=10        " don't let cursor scroll below or above 10 lines when scrolling
set history=100         " number of commands to save in history


"--- filetype ------------------------------------------------------{{{
" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load and indent file for the detected file type.
filetype indent on
"-------------------------------------------------------------------}}}

"--- line numbers ----------------------------------------------{{{
" Add numbers to each line on the left-hand side.
set number

" turn relative line numbers on
set relativenumber
"---------------------------------------------------------------}}}

"--- cursor line / cokumn --------------------------------------{{{
" Highlight cursor line underneath the cursor horizontally.
set cursorline
" Highlight cursor line underneath the cursor vertically.
set cursorcolumn
"---------------------------------------------------------------}}}

"--- tab ------------------------------------{{{
" Set shift width to 4 spaces.
set shiftwidth=4
" Set tab width to 4 columns.

set tabstop=4

" Use space characters instead of tabs.
set expandtab
"--------------------------------------------}}}

"--- wildmenu ---------------------------------------------------------------{{{
" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
"----------------------------------------------------------------------------}}}

"--- search ------------------------------------{{{
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

" search and replace
nnoremap <C-x> :%s/

nnoremap % %:echo"%=find matching parenthesis or brackets"<cr>
"--------------------------------------------------------}}}

"--------------------------------------------end-of-settings-----------------------------}}}

"--- movements -----------------------------------------------------------------{{{
nnoremap 0 0:echo"0 = beginning of line"<cr>
nnoremap $ $:echo"$ = end of line"<cr>
nnoremap h h:echo "-N-  h left"<cr>
nnoremap j j:echo "-N-  j down"<cr>
nnoremap k k:echo "-N-  k up"<cr>
nnoremap l l:echo "-N-  l right"<cr>

nnoremap o o<esc>:echo"-N-  o = open line below"<cr>
nnoremap O O<esc>:echo"-N-  O = Open line above"<cr>

" speed up scrolling
nnoremap <S-j> }:echo '-N-  shift-j = } down'<CR>
nnoremap <S-k> {:echo '-N-  shift-k = { up'<CR>
nnoremap <S-l> $:echo '-N-  shift-l = end of line'<CR>
nnoremap <S-h> 0:echo '-N-  shift-h = beginning of line'<CR>

nnoremap <c-u> <c-u>:echo "-N-  ctrl-u = page up"<cr>
nnoremap <c-d> <c-d>:echo "-N-  ctrl-d = page down"<cr>

nnoremap gg gg:echo"-N-  gg = top of page"<cr>
nnoremap G G:echo"-N-  G = bottom of page"<cr>
"-------------------------------------------------------------------------------}}}

"--- panes ------------------------------------------------------{{{
set splitright

nnoremap <Leader>vv :vs<CR>
nnoremap <Leader>hh :sp<CR>

nnoremap <c-j> <c-w><c-w>:echo"ctrl-j = right pane rotate"<cr>
inoremap <c-j> <esc><c-w><c-w>:echo"ctrl-j = right pane rotate"<cr>
nnoremap <c-k> <c-w>h:echo"ctrl-k = left pane"<cr>
inoremap <c-k> <esc><c-w>h:echo"ctrl-k = left pane"<cr>

nnoremap <c-l> 2<c-w><:echo'Resize pane <'<CR>
nnoremap <c-H> 2<c-w>>:echo'Resize pane >'<CR>
"----------------------------------------------------------------}}}

"--- yank delete change paste undo ------------------------{{{
nnoremap yy yy:echo"yy=yank one line"<cr>
nnoremap Y  y$:echo'Y=Yank from cursor to end of line'<CR>
nnoremap y0 y0
nnoremap yw yw:echo'yw=yank word'<cr>
nnoremap yt yt
nnoremap yf yf
nnoremap yi yi
nnoremap ya ya
"NB! yt and yf can not have an echo statment after them.

nnoremap dd dd:echo'Normal dd=delete line'<cr>
nnoremap D  d$:echo'Normal  D=Delete from cursor to end of line'<cr>
nnoremap d0 d0:echo'delete from cursor til beginning of line'<cr>
nnoremap dw dw:echo'delete til beginning of next word'<cr>
nnoremap de de:echo'de=delete til end of word'<cr>
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

nnoremap u u:echo"u=undo"<cr>
"----------------------------------------------------------}}}

"--- environment --------------------{{{
let $BASH_PROFILE  = '~/.bash_profile'
let $BASHRC        = '~/.bashrc'
let $ALIASES       = '~/.aliases'
let $VIMRC         = '~/.vimrc'
let $VIFMRC        = '~/.vifm/vifmrc.vim' 
let $TMUX          = '~/.tmux.conf'
let $BASH_ENV      = "~/.aliases"
let $ZSH_ENV       = "~/.aliases"
let $LFRC          = "~/.config/lf/lfrc.vim"
nnoremap <enter> :!
"------------------------------------}}}

"--- edit resources -----------------------------------------------{{{
nnoremap <Leader>ebp :vs $BASH_PROFILE<cr>:echo expand('%:p')<cr>
nnoremap <Leader>ezp :vs ~/.zprofile<cr>:echo expand('%:p')<cr>
nnoremap <Leader>eb :vs $BASHRC<CR>:echo expand('%:p')<CR>
nnoremap <Leader>ez :vs .zshrc<CR>:echo expand('%:p')<CR>
nnoremap <Leader>ea :vs $BASH_ALIASES<CR>:echo expand('%:p')<CR>
nnoremap <Leader>ev :vs $VIMRC<CR>:echo expand('%:p')<CR>
nnoremap <Leader>evf :vs $VIFMRC<CR>:echo expand('%:p')<CR>
nnoremap <Leader>et :vs $TMUX<CR>:echo expand('%:p')<CR>
nnoremap <Leader>ex :vs ~/.xinitr<CR>:echo expand('%:p')<CR>
nnoremap <Leader>elf :vs ~/.config/lf/lfrc<CR>:echo expand('%:p')<CR>
"------------------------------------------------------------------}}}

"--- compiling -------------------------------------{{{
nnoremap <Leader>mh :!make help<CR>
nnoremap <Leader>mv :!make vars<CR>
nnoremap <Leader>mc :!make clean<CR>
nnoremap <Leader>mm :!make all<CR>
nnoremap <Leader>mr :!make run<CR>
nnoremap <Leader>md :!make dbg<CR>
"---------------------------------------------------}}}

"--- open programs -----------------------------{{{
" TODO: ,lf to open lf
nnoremap <Leader>fm :Lexplore<CR>7<C-w>
"-----------------------------------------------}}}

"--- comments ----------------------------------{{{
" ,ch = leader comment hash
nnoremap <Leader>ch I#<ESC>j
" ,ca = leader comment apostrophe
nnoremap <Leader>ca I"<ESC>j
" ,cc = leader comment c source code
nnoremap <Leader>cc I//<ESC>j

" @c comment C line  //
let @c = "I// \<Esc>j"
" @u uncomment C line
let @u = "I\<Del>\<Del>\<Del>\<Esc>j"
"-----------------------------------------------}}}

"--- @ macros --------------------------------------------------------{{{
" @p printf("
let @p = "Iprintf(\""

" @f for(int i = 0; i < 10; i++){
let @o = "I\<TAB>for(int i = 0; i < 10; i++){\<esc>I\<tab>\<tab>"
"---------------------------------------------------------------------}}}

"--- scripts autogroup autocmd ------------------------------{{{
" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" Display cursorline and cursorcolumn ONLY in active window.
augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline nocursorcolumn
    autocmd WinEnter * set cursorline cursorcolumn
augroup END
"------------------------------------------------------------}}}

"--- plugins ----------------------------------------------{{{
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

call plug#end()
"----------------------------------------------------------}}}

"--- colorscheme and font ---------------------------------{{{
syntax on
"colorscheme 12my.desert
set background=dark
let g:gruvbox_italic = '1'
let g:gruvbox_italicize_comments = '1'
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE
" set guifont=Consolas:h9:cANSI

"################ DRACULA dracula ###########
"packadd! dracula
"syntax enable
"colorscheme dracula
"################ dracula DRACULA ###########
"----------------------------------------------------------}}}

"--- esc save source quit ------------------------------------------------------{{{
set noesckeys
set ttimeout
set ttimeoutlen=300    " esc timeout
set timeoutlen=700     " mapleader timeout
nnoremap <esc> <esc>:nohlsearch<cr>:echo"-N-  esc"<cr>
inoremap <esc> <esc>:echo"-N-  esc"<cr>
vnoremap <esc> <esc>:echo"-N-  esc"<cr>
cnoremap <esc> <esc>:echo"-N-  esc"<cr>

nnoremap <C-s> <esc>:nohlsearch<cr>:w<cr>:source ~/.vimrc<cr>:echo"sourced: ~/.vimrc"<cr>
inoremap <C-s> <esc>:w<cr>
vnoremap <C-s> <esc>:w<cr>
cnoremap <C-s> <esc>:w<cr>

nnoremap <Leader>ss :source ~/.vimrc<cr>:echo"sourced: ~/.vimrc"<cr>

nnoremap <c-q> :wq<cr>
nnoremap q :q<cr>
inoremap <c-q> <ESC>:wq<cr>
vnoremap <c-q> <ESC>:wq<cr>
cnoremap <c-q> <ESC>:wq<cr>
"----------------------------------------------------------------------------------}}}

"--- statusline -----------------------------------{{{
set statusline=
set laststatus=2
"set statusline+=%F
"set statusline+=%=
"set statusline+=row:%l\ col:%c\ percent:%p%%
"--------------------------------------------------}}}
       

