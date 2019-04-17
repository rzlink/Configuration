" easymotion - simpler way to use some motions in vim

Plug 'easymotion/vim-easymotion'

" Disable default mappings
let g:EasyMotion_do_mapping = 0

" s{char}{char} to move to {char}{char}
nmap              s             <Plug>(easymotion-overwin-f2)

" <Leader>f{char} to move to {char}
map      <silent> <Leader>jj    <Plug>(easymotion-j)
map      <silent> <Leader>jk    <Plug>(easymotion-k)

" Move to line
map      <silent> <Leader>jl    <Plug>(easymotion-bd-jk)
nmap     <silent> <Leader>jl    <Plug>(easymotion-overwin-line)

" Move to word
map      <silent> <Leader>jw    <Plug>(easymotion-bd-w)
nmap     <silent> <Leader>jw    <Plug>(easymotion-overwin-w)

" vim:ft=vim
