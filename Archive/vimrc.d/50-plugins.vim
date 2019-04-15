" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdtree'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'               " A Git wrapper so awesome

" color schemes
Plug 'w0ng/vim-hybrid'
Plug 'crusoexia/vim-monokai'
Plug 'tomasr/molokai'

" Initialize plugin system
call plug#end()
