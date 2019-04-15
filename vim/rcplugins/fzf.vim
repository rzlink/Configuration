" fzf - the fuzzy finder of all the things

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Setting ripgrep as the default source for fzf
let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore-vcs --hidden'

"noremap <silent> <leader>he :Helptags<cr>

" <C-p> or <C-t> to search files
nnoremap <C-p> :Files<cr>
nnoremap <C-t> :FZF -m<cr>

" <M-p> for open buffers
nnoremap <silent> <M-p> :Buffers<cr>
"
" <M-S-p> for MRU
nnoremap <silent> <M-S-p> :History<cr>

" Better command history with q:
command! CmdHist call fzf#vim#command_history({'right': '40'})
nnoremap q: :CmdHist<CR>

" Better search history
command! QHist call fzf#vim#search_history({'right': '40'})
nnoremap q/ :QHist<CR>

" vim:ft=vim