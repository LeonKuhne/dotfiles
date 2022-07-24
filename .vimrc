filetype plugin indent on
syntax on
colorscheme desert

set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab
set number
set ruler "lxk1170"

" autocmd BufRead,BufNewFile *.htm,*.html,*.vue setlocal tabstop=4 shiftwidth=4 softtabstop=4

autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript

autocmd BufRead,BufNewFile *.py,*.rs setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd BufRead,BufNewFile *.tsx setlocal tabstop=2 shiftwidth=2 softtabstop=2
