" Save on FocusLost
autocmd FocusLost * nested :silent! wall

" Markdown files
autocmd BufRead,BufNewFile {*.md,*.mkd,*.markdown} setlocal ft=markdown wrap

" Makefile
autocmd FileType make set noexpandtab

" Enable spell check by default for git commits
autocmd FileType gitcommit set spell
