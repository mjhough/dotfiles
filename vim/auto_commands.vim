" Save on FocusLost
autocmd FocusLost * nested :silent! wall

" Markdown files
autocmd BufRead,BufNewFile {*.md,*.mkd,*.markdown} setlocal ft=markdown wrap

" Makefile
autocmd FileType make set noexpandtab

" Enable spell check by default for git commits
autocmd FileType gitcommit set spell

" Prevent temp file must be edited in place warning with crontab
autocmd filetype crontab setlocal nobackup nowritebackup
