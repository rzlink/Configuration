" easymotion - simpler way to use some motions in vim

Plug 'easymotion/vim-easymotion'

" s{char}{char} to move to {char}{char}
nmap              s             <Plug>(easymotion-overwin-f2)

" <Leader>f{char} to move to {char}
map      <silent> <Leader>jj    <Plug>(easymotion-bd-f)
map      <silent> <Leader>jj    <Plug>(easymotion-overwin-f)

" Move to line
map      <silent> <Leader>jl    <Plug>(easymotion-bd-jk)
nmap     <silent> <Leader>jl    <Plug>(easymotion-overwin-line)

" Move to word
map      <silent> <Leader>jw    <Plug>(easymotion-bd-w)
map      <silent> <Leader>jw    <Plug>(easymotion-overwin-w)

" vim:ft=vim
