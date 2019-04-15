" fzf - the fuzzy finder of all the things

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Setting ripgrep as the default source for fzf
let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore-vcs --hidden'

noremap <silent> <leader>he :Helptags<cr>

nnoremap <C-p> :Files<cr>

" vim:ft=vim
