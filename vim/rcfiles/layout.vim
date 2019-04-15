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

" Completion mode that is used for the character specified with
" When 'wildmenu' is on, command-line completion operates in an enhanced
" mode.  On pressing 'wildchar' (usually <Tab>) to invoke completion,
" the possible matches are shown just above the command line, with the
" first match highlighted (overwriting the status line, if there is
" one).  Keys that show the previous/next match, such as <Tab> or
" CTRL-P/CTRL-N, cause the highlight to move to the appropriate match.
set wildmenu

" When this option is set, the screen will not be redrawn while
" executing macros, registers and other commands that have not been
" typed.  Also, updating the window title is postponed.  To force an
" update use |:redraw|.
set lazyredraw

" Show the line and column number of the cursor position, separated by a
" comma.
set ruler

" Show (partial) command in the last line of the screen.  Set this
" option off if your terminal is slow.
set showcmd

" When on, lines longer than the width of the window will wrap and
" displaying continues on the next line.  When off lines will not wrap
" and only part of long lines will be displayed.
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
     set colorcolumn=80
    " http://blog.hanschen.org/2012/10/24/different-background-color-in-vim-past-80-columns/
    " execute "set colorcolumn=" . join(range(81,335), ',')
endif

" Highlight the screen line of the cursor with CursorLine |hl-CursorLine|.
set cursorline

" Highlight the screen column of the cursor with CursorColumn
" |hl-CursorColumn|.  Useful to align text.  Will make screen redrawing
" slower.
set cursorcolumn

" The value of this option influences when the last window will have a
" status line:
"       0: never
"       1: only if there are at least two windows
"       2: always
set laststatus=2

colorscheme molokai