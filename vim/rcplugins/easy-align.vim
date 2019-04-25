" Easy Align - operators for aligning characters across lines

Plug 'junegunn/vim-easy-align'

command! ReformatTable normal vip<cr>**|
nnoremap <silent> <Leader>wd    :close<CR>
nmap              <leader>rt    :ReformatTable<cr>

vmap              <cr>          <Plug>(EasyAlign)

" vim:ft=vim
