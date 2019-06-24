" Run the YCM install script after installing plugin
function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !/usr/local/bin/python3 ./install.py --all
  endif
endfunction

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
" Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
" Plug 'zxqfl/tabnine-vim'
" Plug 'w0rp/ale'
Plug 'Yggdroot/indentLine'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-fugitive'
Plug 'slim-template/vim-slim'
Plug 'scrooloose/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-unimpaired'
Plug 'thoughtbot/vim-rspec'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview'
call plug#end()
