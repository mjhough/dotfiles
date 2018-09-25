" Disable up and down arrows in navigation
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Open/close NERDTree Tabs with ,f
map <Leader>f :NERDTreeToggle<CR>
map <Leader>F :NERDTreeFind<CR>

" Toggle comments with ,cc
map <Leader>cc <plug>NERDCommenterToggle

" Switch between split buffers with arrow keys
nnoremap <slient> <Up> <c-w-k>
nnoremap <silent> <Down> <c-w-j>
nnoremap <silent> <Right> <c-w-l>
nnoremap <slient> <Left> <c-w-h>

" Open fzf file finder with ;
map ; :Files<CR>

" Go to middle of text on a line with gm
map gm :exe 'normal '.(virtcol('$')/2).'|'
