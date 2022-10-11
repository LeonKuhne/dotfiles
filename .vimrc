syntax enable
filetype plugin indent on

set ruler "lxk1170"
set t_Co=256
set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab
set number
set hlsearch 
set foldmethod=indent
set foldenable
set Semshi enable

let g:rainbow_active = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:blamer_enable = 1
colorscheme leon-dark-256

autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript
autocmd BufRead,BufNewFile *.rs set filetype=rust
autocmd BufRead,BufNewFile *.svelte set filetype=html
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.rs set foldmethod=syntax
autocmd BufRead,BufNewFile *.rs setlocal tabstop=4 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.py setlocal tabstop=4 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.tsx setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufRead,BufNewFile *.scss set filetype=scss.css
autocmd BufRead,BufNewFile *.sass set filetype=sass.css

let g:ale_linters = { 'rust': ['analyzer'] }
let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }

" autocmd BufRead,BufNewFile *.htm,*.html,*.vue setlocal tabstop=4 shiftwidth=4 softtabstop=4

