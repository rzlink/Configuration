" Providing linting (syntax checking and semantic errors)

Plug 'dense-analysis/ale'

" Install linters
" pip install flake8
" pip install vim-vint

let g:ale_linters = {
\   'python': ['flake8'],
\   'cs': ['OmniSharp'],
\   'vim': ['vint'],
\}
let g:ale_fixers = {
\   'python': ['remove_trailing_lines', 'trim_whitespace', 'autopep8']
\}

" vim:ft=vim
