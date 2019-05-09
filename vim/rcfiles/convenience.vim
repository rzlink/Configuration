" EMACS-LIKE BINDINGS {{{

" Emacs-like bindings in insert mode {{{

" forward (right) one character
inoremap          <C-f>         <Right>

" back (left) one character
inoremap          <C-b>         <Left>

" move to beginning of line
inoremap          <C-a>         <C-o>0

" move to end of line
inoremap          <C-e>         <C-o>$

" back (left) one word
inoremap          <M-b>         <C-o>b

" forward (right) one word
inoremap          <M-f>         <C-o>w

" }}}

" Emacs-like bindings in the command line from `:h emacs-keys` {{{

" start of line
cnoremap          <C-a>         <Home>

" back one character
cnoremap          <C-b>         <Left>

" forward one character
cnoremap          <C-f>         <Right>

" delete character under cursor
cnoremap          <C-d>         <Del>

" end of line
cnoremap          <C-e>         <End>

" back one word
cnoremap          <M-b>         <S-Left>

" forward one character
cnoremap          <M-f>         <S-Right>

" delete the word after the cursor
cnoremap          <M-d>         <S-right><Delete>

" quit partially entered command
cnoremap          <C-g>         <C-c>"}}}

" }}}

" CHANGE DIRECTORY {{{

" change global directory to basename of current file
nnoremap <silent> <Leader>c     :cd %:h<CR>

" change current buffer directory to basename of current file
nnoremap <silent> <Leader>lc    :lcd %:h<CR>

"}}}

" TOGGLE OPTION {{{

" Toggle spell checker
nnoremap <silent> <Leader>ts    :setlocal spell!<CR>

" Toggle hidden characters (:setlocal nolist!)
nnoremap <silent> <Leader>tl    :setlocal list!<CR>

" Toggle wrap (:setlocal wrap! breakindent!)
nnoremap <silent> <Leader>tw    :setlocal wrap!<CR>

" Toggle menu bar
nnoremap <silent> <Leader>Tm    :if &guioptions=~#'m'<Bar>set guioptions-=m<Bar>
                                \else<Bar>set guioptions+=m<Bar>
                                \endif<CR>

" Toggle tool bar
nnoremap <silent> <Leader>Tt    :if &guioptions=~#'T'<Bar>set guioptions-=T<Bar>
                                \else<Bar>set guioptions+=T<Bar>
                                \endif<CR>

" Toggle Right-hand scrollbar
nnoremap <silent> <Leader>Tr    :if &guioptions=~#'r'<Bar>set guioptions-=r<Bar>
                                \else<Bar>set guioptions+=r<Bar>endif<CR>

"}}}

" BUFFERS OPERATIONS {{{

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

" <leader><leader> is more convenient than <c-^>
nnoremap <leader><leader>       <c-^>

"}}}

" FILE OPERATIONS {{{

" Open recent (show recent files)
nnoremap <silent> <Leader>fr    :browse oldfiles<CR>

" Copy current file path
nnoremap <silent> <Leader>fy    :let @+ = expand("%:p")<CR>

"}}}

" WINDOW OPERATIONS {{{

" Quick jumping between splits {{{
map               <C-J>         <C-W>j
map               <C-K>         <C-W>k
map               <C-H>         <C-W>h
map               <C-L>         <C-W>l
"}}}

" Window split {{{

" Split window below
nnoremap <silent> <Leader>w-    <C-w><C-s>

" Split window to right
nnoremap <silent> <Leader>w/    <c-w><c-v>

"}}}

" Window resizeing {{{2

" Maximize active window
nnoremap <silent> <Leader>wm    <C-w>_<C-w>\|

" Make all windows equally high and wide
nnoremap          <M-=>         <C-w>=

" Decrease current window width by 1
nnoremap          <M-,>         <C-w><lt>

" Increase current window width by 1
nnoremap          <M-.>         <C-w>>

" resize window width szie to 80
nnoremap          <M-\>         :vertical resize 80<CR>

" }}}

" Opening and closing a window {{{

" Close current window
nnoremap <silent> <Leader>wd    :close<CR>

" Only keep current window
nnoremap <silent> <Leader>wo    :only<CR>

" Close all window
nnoremap <silent> <Leader>qq    :qall<CR>

"}}}

" Quick exchange current window with next one
nnoremap <C-x> <C-w>x<C-w>w

"}}}

" SEARCH {{{

" clear the search highlight
nmap     <silent> \q            :nohlsearch<CR>

" center search results
nnoremap          n             nzz
nnoremap          N             Nzz
nnoremap          *             *zz
nnoremap          #             #zz
nnoremap          g*            g*zz
nnoremap          g#            g#zz
"}}}

" LINE MOVEMENTS {{{
nnoremap <silent> <M-Down>      :m +1<cr>
nnoremap <silent> <M-Up>        :m -2<cr>

" move vertically by visual line
nnoremap          j             gj
nnoremap          k             gk
"}}}

" YANK, PASTE AND DELETE {{{

" yank all content to system clipboard
nnoremap <silent> <Leader>ya    :%y+<CR>

" Past system clipbard conent
nnoremap <silent> <S-Insert>    "*p

" delete all content
nnoremap <silent> <Leader>da    :%d<CR>

"}}}

" FORMAT{{{

" strip all trailing whitespace in the current file
nnoremap <silent> <leader>W :%s/\s\+$//e<CR>:let @/=''<CR>:%s/\n\{3,}/\r\r/e<CR>

"}}}

" force use <C-h>, <C-u>, <C-w> to delete
inoremap          <BS>          <nop>
cnoremap          <BS>          <nop>
inoremap          <S-BS>        <nop>
cnoremap          <S-BS>        <nop>

" TODO: understand and reorder the following key mapping
" Start new line from any cursor position
inoremap          <S-Return>    <C-o>o

" Scroll 5 characters to the right
nnoremap          zl            z5l

" Scroll 5 characters to the left
nnoremap          zh            z5h

" TABS {{{

" Go to tab by number
noremap           <leader>1     1gt
noremap           <leader>2     2gt
noremap           <leader>3     3gt
noremap           <leader>4     4gt
noremap           <leader>5     5gt
noremap           <leader>6     6gt
noremap           <leader>7     7gt
noremap           <leader>8     8gt
noremap           <leader>9     9gt

" Go to previous tab
nnoremap <silent> gr            :<C-u>tabprevious<CR>

nnoremap <silent> <C-Tab>       :<C-u>tabnext<CR>
nnoremap <silent> <C-S-Tab>     :<C-u>tabprevious<CR>

nnoremap          <leader>tx    :tabclose<CR>
nnoremap          <leader>tc    :tabclose<CR>

"}}}

" Duplicate lines
nnoremap          <Leader>d     m`YP``
vnoremap          <Leader>d     YPgv

