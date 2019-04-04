"
" Dawei Wei: Personal preference _vimrc file
"

" Plugin {{{
call plug#begin('$HOME/vimfiles/plugged')
Plug 'scrooloose/nerdtree'              " A tree explorer plugin for vim.
Plug 'kien/ctrlp.vim'                   " Fuzzy file, buffer, mru, tag, etc finder.
Plug 'whatyouhide/vim-gotham'           " Gotham is a very dark vim colorscheme.
Plug 'vim-scripts/YankRing.vim'         " Maintains a history of previous yanks, changes and deletes
Plug 'itchyny/lightline.vim'            " A light and configurable statusline/tabline plugin
Plug 'easymotion/vim-easymotion'        " Vim motions on speed!
Plug 'takac/vim-hardtime'               " Plugin to help you stop repeating the basic movement keys
Plug 'altercation/vim-colors-solarized' " Precision colorscheme for the vim text editor
Plug 'PProvost/vim-ps1'                 " A Vim plugin for Windows PowerShell support
call plug#end()
" }}}

" General {{{
set history=100                 " remember more commands and search history
filetype plugin on
filetype indent on
set backspace=indent,eol,start
set nocompatible
set nowrap
set mouse=                      " disable mouse
"}}}

" UI Layout {{{
set lines=40 columns=130        " default window size
set laststatus=2
" set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=m           " remove menu bar
    set guioptions-=T           " remove toolbar
    set guioptions-=r           " remove rigth-hand scroll bar
    set guioptions-=L           " remove left-hand scroll bar
    set guioptions+=i           " use a vim icon
    "set guioptions=            " remove all gui options
    set guifont=Consolas:h11    " font == consolas
    colorscheme solarized
    set background=dark
    "colorscheme zellner
else
    colorscheme industry
endif

"set textwidth=79
set colorcolumn=85
syntax enable                   " enable syntax processing
"set formatoptions=qrn1         " TODO: understand the usage
set encoding=utf8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set number                      " always show line numbers
set relativenumber              " use relative number
set showcmd                     " show command in bottom bar
set cursorline                  " highlight current line (depending on your colorscheme)
"
" highlight need to put after the colorscheme and syntax enable, otherwise it
" will get overwrite
highlight CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

set ruler                       " always show current position
set wildmenu                    " visual autocomplete for Command Menu
set showmatch                   " highlight [{()}], default on

" }}}

" Spaces & Tabs {{{
" default vim settings 'ts=8, sts=0, sw=8, noexpandtab'
set tabstop=4                   " number of visual spaces per TAB
set softtabstop=4               " number of spaces in tab when editing
set expandtab                   " use spaces for tabs
set shiftwidth=4                " number of spaces to use for autoindenting
set smarttab                    " insert tabs on the start of a line according to
                                "       shiftwidth, not tabstop
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set autoindent                  " always set autoindenting on
"set list listchars=tab:>-,trail:.,extends:>
set list listchars=tab:▸\ ,trail:.,eol:¬
" }}}

" Searching {{{
set incsearch                   " show search matches as you type
set hlsearch                    " highlight search terms
set smartcase                   " ignore case if search pattern is all lowercase,
                                "       case-sensitive otherwise
set ignorecase                  " ignore case when searching
" }}}

" Folding {{{
set foldmethod=marker           " fold based on indent level
" }}}

" Files, backup and undo {{{
set nobackup
set noswapfile
"set directory=.,$TEMP
" }}}

" Key mapping {{{
nmap \q :nohlsearch<CR>
let mapleader = "\<Space>"      " map leader key to <Space>
nnoremap <Leader>o :CtrlP<CR>   " <Space>o to open a new file

" quick open up _vimrc file in a vertically split window
nnoremap <silent> <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<CR>
nnoremap <silent> <leader>el :source $MYVIMRC<CR>

noremap! <F1> <Esc>
nnoremap <silent> <F3> :YRShow<CR>
inoremap <silent> <F3> <ESC>:YRShow<CR>
nnoremap <silent> <F4> :NERDTreeToggle<CR>  " NerdTree Toggle (file browser)
inoremap <silent> <F4> <ESC>:NERDTreeToggle<CR>

" disable the arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Easy window navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap <leader>w <C-w>v<C-w>l
" }}}

" Text format {{{

" make a simple "search" text object
" http://vim.wikia.com/wiki/Copy_or_change_search_hit
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

" strip all trailing whitespace in the current file
nnoremap <silent> <leader>W :%s/\s\+$//e<CR>
    \:let @/=''<CR>:%s/\n\{3,}/\r\r/e<CR>

" }}}

" functions {{{
" Highlight all instances of word under cursor when idle.
" Useful when studying strange source code.
" Type z/ to toggle highlighting on/off
nnoremap z/ :if AutoHighlightToggle()<Bar>endif<CR>
function! AutoHighlightToggle()
    let @/ = ''
    if exists('#auto_highlight')
        au! auto_highlight
        augroup! auto_highlight
        setl updatetime=4000
        echo 'Highlight current word: off'
        return 0
    else
        augroup auto_highlight
            au!
            au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
        augroup end
        setl updatetime=50
        echo 'Highlight current word: ON'
        return 1
    endif
endfunction

" toggle line number and relative line number
nnoremap <leader> l :call NumberToggle()<CR>
function! NumberToggle()
    if(&nu == 1)
        set nu!
        set rnu
    else
        set nornu
        set nu
    endif
endfunction
" }}}
