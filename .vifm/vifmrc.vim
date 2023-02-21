":echo "~/.vifm/vifmrc"

"
" show hidden files by default
windo normal! zo


nnoremap q :q<cr>
nnoremap <C-q> :q<cr>

"nnoremap <C-s> <ESC>:source ~/.vifm/vifmrc<CR> :echo "sourced"<cr>
map <C-s> <ESC>:source ~/.vifm/vifmrc<CR> :echo "sourced: ~/.vifm/vifmrc"<cr>



nnoremap <C-l> <C-w><C-w>
nnoremap <C-h> <C-w><C-w>
nnoremap <c-j> <c-w>l
nnoremap <c-k> <c-w>h



" i = insert / rename from start of filename
nnoremap i cw<C-a>

" a = append / rename from end   of filename
nnoremap a cw

" c = change / rename the whole filename.
nnoremap c cw<C-u>


":echo "~/.vifm/vifmrc"<cr>

