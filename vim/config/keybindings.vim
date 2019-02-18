" Disable up and down arrows in navigation
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Open/close NERDTree Tabs with ,f
map <Leader>f :Sex!<CR>
map <Leader>F :Ex<CR>

" Toggle comments with ,cc
map <Leader>cc <plug>NERDCommenterToggle

" Switch between split buffers with arrow keys
nnoremap <slient> <Up> <c-w-k>
nnoremap <silent> <Down> <c-w-j>
nnoremap <silent> <Right> <c-w-l>
nnoremap <slient> <Left> <c-w-h>

" Use <leader>d to actually delete
nnoremap <leader>d "_d
xnoremap <leader>d "_d

" Open fzf file finder with ;
map ; :Files<CR>

" Go to middle of text on a line with gm
map gm :call cursor(0, virtcol('$')/2)<CR>
