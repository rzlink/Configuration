" Make p in Visual mode replace the selected text with the "" register.
vnoremap          p             <Esc>:let current_reg = @"<CR>gvdi<C-R>
                               \=current_reg<CR><Esc>

nnoremap <silent> <S-Insert>    "*p
"nnoremap <silent> <F2>          :wa<Bar>exe "mksession! " . v:this_session<CR>

" Emacs-like bindings in insert mode
imap              <C-e>         <C-o>$
imap              <C-a>         <C-o>0

" Emacs-like bindings in the command line from `:h emacs-keys`
cnoremap          <C-a>         <Home>
cnoremap          <C-b>         <Left>
cnoremap          <C-f>         <Right>
cnoremap          <C-d>         <Del>
cnoremap          <C-e>         <End>
cnoremap          <M-b>         <S-Left>
cnoremap          <M-f>         <S-Right>
cnoremap          <M-d>         <S-right><Delete>
cnoremap          <C-g>         <C-c>

" change global directory to basename of current file
nnoremap <silent> <Leader>c     :cd %:h<CR>

" change current buffer directory to basename of current file
nnoremap <silent> <Leader>lc    :lcd %:h<CR>

nnoremap <silent> <Leader>s     :setlocal spell<CR>
                               \:setlocal spelllang=en<CR>

nnoremap <silent> <Leader>ns    :setlocal nospell<CR>

nnoremap <silent> <Leader>sc    :e<CR>:setlocal buftype=nofile<CR>
                               \:setlocal bufhidden=hide<CR>
                               \:setlocal nobuflisted<CR>
                               \:setlocal noswapfile<CR>

" yank all content to system clipboard
nnoremap <silent> <Leader>ay    :%y+<CR>

" center search results
nnoremap          n             nzz
nnoremap          N             Nzz
nnoremap          *             *zz
nnoremap          #             #zz
nnoremap          g*            g*zz
nnoremap          g#            g#zz

nmap \q :nohlsearch<CR>