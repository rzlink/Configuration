"
" Dawei Wei: Personal preference _vimrc file
"

" General {{{
set backspace=indent,eol,start
set noswapfile
set nobackup
set history=100                 " remember more commands and search history

set encoding=utf8
set nowrap
set hidden                      " You can have unwritten changes to a file hidden in the buffer
                                " without being forced to write or undo your changes first
" }}}

" Colors {{{
syntax enable                   " enable syntax processing
                                " this command actually does it to execute the command
                                " :source $VIMRUNTIME/syntax/syntax.vim

"highlight Normal guibg=#FFFFFF  " 银河白 rgb(255, 255, 255)
"highlight Normal guibg=#FAF9DE  " 杏仁黄 rgb(250, 249, 222)
"highlight Normal guibg=#FFF2E2  " 秋叶褐 rgb(255, 242, 226)
"highlight Normal guibg=#FDE6E0  " 胭脂红 rgb(253, 230, 224)
highlight Normal guibg=#E3EDCD  " 青草绿 rgb(227, 237, 205)
"highlight Normal guibg=#DCE2F1  " 海天蓝 rgb(220, 226, 241)
"highlight Normal guibg=#E9EBFE  " 葛巾紫 rgb(233, 235, 254)
"highlight Normal guibg=#EAEAEF  " 极光灰 rgb(234, 234, 239)

"colorscheme skittles_berry

" }}}

" UI Layout {{{
set lines=40 columns=130        " default window size
set number                      " always show line numbers
set relativenumber              " use relative number
set showmatch                   " highlight [{()}], default on

if has("gui_running")
    "set guioptions-=m           " remove menu bar
    set guioptions-=T           " remove toolbar
    set guioptions-=r           " remove rigth-hand scroll bar
    set guioptions-=L           " remove left-hand scroll bar

    set guifont=Consolas:h11    " font == consolas

:endif

set wildmenu                    " visual autocomplete for Command Menu
set ruler                       " always show current position

set laststatus=2                " last window have a status line
                                " 0: never
                                " 1: only if there are at least two windows
                                " 2: always

set statusline=  
set statusline+=%-10.3n\                     " buffer number
set statusline+=%f\                          " filename
set statusline+=%h%m%r%w                     " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%=                           " right align remainder
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

set list listchars=tab:▸\ ,trail:.,eol:¬

set cursorline                  " highlight current line (depending on your colorscheme)

" highlight need to put after the colorscheme and syntax enable, otherwise it
" will get overwrite
highlight CursorLine cterm=NONE ctermbg=darkred ctermfg=white
"highlight CursorLine guibg=DarkCyan guifg=white

set colorcolumn=85
highlight ColorColumn guibg=#FAF9DE

set lazyredraw                  " Don't update the display while executing macros
" }}}

" Spaces & Tabs {{{
" default vim settings 'ts=8, sts=0, sw=8, noexpandtab'
set tabstop=4                   " number of visual spaces per TAB
set softtabstop=4               " number of spaces in tab when editing
set expandtab                   " use spaces for tabs
set shiftwidth=4                " number of spaces to use for autoindenting
set smarttab                    " insert tabs on the start of a line according to
                                "       shiftwidth, not tabstop

set autoindent                  " copy the indentation from the previous line
                                " when starting a new line


filetype on
filetype indent on              " load filetype-specific indent files
filetype plugin on
" }}}

" Searching {{{

"set ignorecase                  " ignore case when searching
set incsearch                   " show search matches as you type
set hlsearch                    " highlight search results
set smartcase                   " ignore case if search pattern is all lowercase,
                                "       case-sensitive otherwise
" }}}

" Folding {{{

set foldmethod=marker           " fold based on indent level
set foldlevelstart=10           " open most folds by default

" }}}

" Key mapping {{{
nmap \q :nohlsearch<CR>

" Emacs-like bindings in insert mode
imap <C-e> <C-o>$
imap <C-a> <C-o>0

" Emacs-like bindings in the command line from `:h emacs-keys`
cnoremap <C-a>  <Home>
cnoremap <C-b>  <Left>
cnoremap <C-f>  <Right>
cnoremap <C-d>  <Del>
cnoremap <C-e>  <End>
cnoremap <M-b>  <S-Left>
cnoremap <M-f>  <S-Right>
cnoremap <M-d>  <S-right><Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc>d <S-right><Delete>
cnoremap <C-g>  <C-c>

let mapleader = "\<Space>"      " map leader key to <Space>

" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>:echo 'Set working directory to' getcwd()<CR>
" }}}

" Movement {{{

" move vertically by visual line
nnoremap j gj
nnoremap k gk

"}}}
