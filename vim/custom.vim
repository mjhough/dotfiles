" FZF selection and word finder by the legendary jdupl123
function! s:p(bang, ...)
  let preview_window = get(g:, 'fzf_preview_window', a:bang && &columns >= 80 || &columns >= 120 ? 'right': '')
  if len(preview_window)
    return call('fzf#vim#with_preview', add(copy(a:000), preview_window))
  endif
  return {}
endfunction"https://stackoverflow.com/questions/1533565/how-to-get-visually-selected-text-in-vimscript
function! s:get_visual_selection()
    " Why is this not a built-in Vim script function?!
    let [line_start, column_start] = getpos("'<")[1:2]
    let [line_end, column_end] = getpos("'>")[1:2]
    let lines = getline(line_start, line_end)
    if len(lines) == 0
        return ''
    endif
    let lines[-1] = lines[-1][: column_end - (&selection == 'inclusive' ? 1 : 2)]
    let lines[0] = lines[0][column_start - 1:]
    return join(lines, "\n")
endfunction

command!      -bang -nargs=* Agw                        call fzf#vim#ag(expand("<cword>"), s:p(<bang>0), <bang>0)
command!      -bang -nargs=* Agv                        call fzf#vim#ag(s:get_visual_selection(), s:p(<bang>0), <bang>0)nnoremap <Leader>* :<C-u>Agw<CR>
vnoremap <Leader>* :<C-u>Agv<CR>
