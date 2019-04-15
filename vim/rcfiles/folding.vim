" Folding configurations
"------------------------

"Enable indent folding
set foldenable

" The kind of folding used for the current window.
"set foldmethod=syntax
set foldmethod=indent

set foldlevel=999

" When non-zero, a column with the specified width is shown at the side
" of the window which indicates open and closed folds.
set foldcolumn=2

" So I never use s, and I want a single key map to toggle folds, thus
" lower s = toggle <=> upper S = toggle recursive
nnoremap <leader>ff za
nnoremap <leader>FF zA

"Maps for folding, unfolding all
nnoremap <LEADER>fu zM<CR>
nnoremap <LEADER>uf zR<CR>

" vim:ft=vim
