" show hidden files by default
windo normal! zo
nnoremap za za :echo "za = toggle dotfiles"<cr>

"nnoremap <space> <space> :echo "space"<cr>
"noremap <tab> <tab> :echo "tab"<cr>

let $BASH_ENV      = "~/.bash_aliases"

"--- movement --- {{{
"nnoremap j j:echo "-- NORMAL -- j = down"<cr> 
"nnoremap k k:echo "-- NORMAL -- k = up"<cr> 
"nnoremap h h:echo "-- NORMAL -- h = parent"<cr> 
"nnoremap l l:echo "-- NORMAL -- l = open"<cr> 
"
"nnoremap <C-l> <C-w>+:echo "C-l = resize"<cr>
"nnoremap <C-h> <C-w>-:echo "C-h = resize"<cr>
"
"nnoremap <C-j> <c-w>l:echo "C-j = right pane"<cr>
"nnoremap <C-k> <c-w>h:echo "C-k = left pane"<cr>
"
"nnoremap gg gg:echo "-- NORMAL -- gg = top"<cr>
"nnoremap G G:echo "-- NORMAL -- G = bottom"<cr>
"
" }}}


"--- rename ---{{{
" i = insert / rename from start of filename
nnoremap i cw<C-a>
" a = append / rename from end   of filename
nnoremap a cw
" c = change / rename the whole filename.
nnoremap c cw<C-u>
"}}}


" --- esc save source quit --- {{{
"noremap <esc> <esc>:echo "esc - cancel/reset selection"<cr>

"map <C-s> <ESC>:source ~/.vifm/vifmrc<CR> :echo "sourced: ~/.vifm/vifmrc"<cr>
"map ,ss <C-s>

"nnoremap q :q<cr>
"nnoremap <C-q> :q<cr>
" .................... }}}


:echo "-- NORMAL --"<cr>

