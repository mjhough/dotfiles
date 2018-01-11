" NERDTree
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Open/close NERDTree Tabs with \f
map <Leader>f :NERDTreeToggle<CR>
map <Leader>F :NERDTreeFind<CR>

" Toggle comments with ,c
map <Leader>cc <plug>NERDCommenterToggle

" Switch between split buffers with arrow keys
nnoremap <slient> <Up> <c-w-k>
nnoremap <silent> <Down> <c-w-j>
nnoremap <silent> <Right> <c-w-l>
nnoremap <slient> <Left> <c-w-h>
