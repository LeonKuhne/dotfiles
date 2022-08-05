syntax enable
filetype plugin indent on

autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript
autocmd BufRead,BufNewFile *.rs set filetype=rust
autocmd BufRead,BufNewFile *.py,*.rs setlocal tabstop=4 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.tsx setlocal tabstop=2 shiftwidth=2 softtabstop=2

set t_Co=256
set ruler "lxk1170"
set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab
set number
set hlsearch 
set foldenable

colorscheme neon-dark-256

let g:ale_linters = { 'rust': ['analyzer'] }
let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }

" autocmd BufRead,BufNewFile *.htm,*.html,*.vue setlocal tabstop=4 shiftwidth=4 softtabstop=4

