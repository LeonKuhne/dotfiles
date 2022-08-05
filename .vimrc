set shell=/usr/bin/bash

call plug#begin()
Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'OmniSharp/omnisharp-vim'
call plug#end()
syntax enable
filetype indent plugin on
colorscheme monokai

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set number
set hlsearch
let g:OmniSharp_server_type = 'roslyn'

" autocmd BufRead,BufNewFile *.htm,*.html,*.vue setlocal tabstop=4 shiftwidth=4 softtabstop=4

autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript

autocmd BufRead,BufNewFile *.py,*.rs setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.tsx setlocal tabstop=2 shiftwidth=2 softtabstop=2
