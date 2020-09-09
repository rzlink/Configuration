if has("gui_win32")
    " This is a list of fonts which will be used for the GUI version of Vim.
    set guifont=Consolas:h11

    " This option only has an effect in the GUI version of Vim.  It is a
    " sequence of letters which describes what components and options of the
    " GUI should be used.
    set guioptions-=m           " remove menu bar
    set guioptions-=T           " remove toolbar
    set guioptions-=r           " remove rigth-hand scroll bar
    set guioptions-=L           " remove left-hand scroll bar

endif

" When on, the mouse pointer is hidden when characters are typed.
set mousehide

" Command-line completion operates in an enhanced mode.
set wildmenu

" When this option is set, the screen will not be redrawn while
" executing macros, registers and other commands that have not been
" typed.  Also, updating the window title is postponed.  To force an
" update use |:redraw|.
set lazyredraw

" shows line number and column
set ruler

" Display commands executed"
set showcmd

" Display commands executed
set nowrap

" The minimal number of columns to scroll horizontally.  Used only when
" the 'wrap' option is off and the cursor is moved off of the screen.
set sidescroll=5

" The minimal number of screen columns to keep to the left and to the
" right of the cursor if 'nowrap' is set.
set sidescrolloff=1

" Default height for a preview window. (Fugitive uses preview window too)
set previewheight=20

if version >= 703
    " 'colorcolumn' is a comma separated list of screen columns that are
    " highlighted with ColorColumn |hl-ColorColumn|.  Useful to align
    " text.  Will make screen redrawing slower.
     set colorcolumn=80,100,120
    " http://blog.hanschen.org/2012/10/24/different-background-color-in-vim-past-80-columns/
    " execute "set colorcolumn=" . join(range(81,335), ',')
endif

" Highlight current line.
set cursorline

" Highlight current column.
set cursorcolumn

" Always dispaly status line
set laststatus=2

if has('gui_running')
    colorscheme molokai
elseif exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
    colorscheme molokai
endif
