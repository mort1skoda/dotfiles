nnoremap q :q<cr>
nnoremap <C-q> :q<cr>

" show hidden files by default
windo normal! zo

nnoremap <C-s> <ESC>:source ~/.vifm/vifmrc<CR>

nnoremap <C-l> <C-w><C-w>
nnoremap <C-h> <C-w><C-w>

" i = insert / rename from start of filename
nnoremap i cw<C-a>

" a = append / rename from end   of filename
nnoremap a cw

" c = change / rename the whole filename.
nnoremap c cw<C-u>


