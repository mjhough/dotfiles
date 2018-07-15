" Run the YCM install script after installing plugin
function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !/usr/local/bin/python3 ./install.py --all
  endif
endfunction

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'w0rp/ale'
Plug 'Yggdroot/indentLine'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-fugitive'
Plug 'slim-template/vim-slim'
Plug 'scrooloose/nerdcommenter'
call plug#end()

