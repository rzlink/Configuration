" Make p in Visual mode replace the selected text with the "" register.
vnoremap          p             <Esc>:let current_reg = @"<CR>gvdi<C-R>
                               \=current_reg<CR><Esc>

nnoremap <silent> <S-Insert>    "*p
"nnoremap <silent> <F2>          :wa<Bar>exe "mksession! " . v:this_session<CR>

" Emacs-like bindings in insert mode {{{1
" Moving Cursor {{{2

" move to beginning of line
inoremap          <C-a>         <C-o>0

" move to end of line
inoremap          <C-e>         <C-o>$

" back (left) one word
inoremap          <M-b>         <Esc>bi

" forward (right) one character
inoremap          <C-f>         <Right>

" back (left) one character
inoremap          <C-b>         <Left>

" }}}

" forward delete character
inoremap          <C-d>         <Del>

" kill-line: delete all characters from cursor to end of line
inoremap          <C-k>         <Esc>lDa

" insert a copy of last deleted line
"inoremap          <C-y>         <Esc>Pa

" save your work without exiting
inoremap          <C-x><C-s>    <Esc>:w<CR>a

" goto Line Number
inoremap          <M-x>         <Esc>:

" forward (right) one word
inoremap          <M-f>         <Esc>lwi


inoremap          <M-S-f>       <Esc>lWi

inoremap          <M-S-b>       <Esc>Bi
" }}}

" Emacs-like bindings in the command line from `:h emacs-keys` {{{1
cnoremap          <C-a>         <Home>
cnoremap          <C-b>         <Left>
cnoremap          <C-f>         <Right>
cnoremap          <C-d>         <Del>
cnoremap          <C-e>         <End>
cnoremap          <M-b>         <S-Left>
cnoremap          <M-f>         <S-Right>
cnoremap          <M-d>         <S-right><Delete>
cnoremap          <C-g>         <C-c>
" }}}

" Quick jumping between splits
map               <C-J>         <C-W>j
map               <C-K>         <C-W>k
map               <C-H>         <C-W>h
map               <C-L>         <C-W>l

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

" Quick open (show current buffers)
nnoremap <silent> <Leader>bb    :ls<CR>

" Delete active buffer
nnoremap <silent> <Leader>bd    :bdelete<CR>

" Wipeout active buffer
nnoremap <silent> <Leader>bw    :bwipeout<CR>

" Next buffer
nnoremap <silent> <Leader>bn    :bnext<CR>

" Previous buffer
nnoremap <silent> <Leader>bp    :bprevious<CR>

" Open recent (show recent files)
nnoremap <silent> <Leader>fr    :browse oldfiles<CR>

" Copy current file path
nnoremap <silent> <Leader>fy    :let @+ = expand("%:p")<CR>

" Split window below
nnoremap <silent> <Leader>w-    :belowright split<CR>

" Split window to right
nnoremap <silent> <Leader>w/    :belowright vsplit<CR>

" Window resizeing {{{2
" Maximize
nnoremap <silent> <Leader>wm    <C-w>_<C-w>\|

" Make all windows equally high and wide
nnoremap          <M-=>         <C-w>=

" Decrease current window width by 1
nnoremap          <M-,>         <C-w><lt>

" Increase current window width by 1
nnoremap          <M-.>         <C-w>>
" }}}

" Close current window
nnoremap <silent> <Leader>wd    :close<CR>

" Only keep current window
nnoremap <silent> <Leader>wo    :only<CR>

" Close all window
nnoremap <silent> <Leader>qq    :qall<CR>

" yank all content to system clipboard
nnoremap <silent> <Leader>ya    :%y+<CR>

nnoremap <silent> <Leader>da    :%d<CR>

" strip all trailing whitespace in the current file
nnoremap <silent> <leader>W :%s/\s\+$//e<CR>:let @/=''<CR>:%s/\n\{3,}/\r\r/e<CR>

" clear the search highlight
nmap     <silent> \q            :nohlsearch<CR>

" center search results
nnoremap          n             nzz
nnoremap          N             Nzz
nnoremap          *             *zz
nnoremap          #             #zz
nnoremap          g*            g*zz
nnoremap          g#            g#zz

" move lines in normal mode
" nnoremap <silent> <s-j>         :m +1<cr>
" nnoremap <silent> <s-k>         :m -2<cr>
