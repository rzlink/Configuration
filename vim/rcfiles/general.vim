" When 'fileencoding' is different from 'encoding', conversion will be
" done when writing the file.
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

" Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert mode.
set backspace=indent,eol,start

" Copy indent from current line when starting a new line (typing <CR>
" in Insert mode or when using the "o" or "O" command).
set autoindent

" Allow have unwritten file changes to hidden in the buffer without being force
" to write or undo your changes first.
set hidden

" Maximum width of text that is being inserted. A longer line will be
" broken after white space to get this width.
set textwidth=80

" When non-empty, the viminfo file is read upon startup and written
" when exiting Vim (see |viminfo-file|).
" The viminfo file is used to store:
"   - The command line history.
"   - The search string history.
"   - The input-line history.
"   - Contents of non-empty registers.
"   - Marks for several files.
"   - File marks, pointing to locations in files.
"   - Last search/substitute pattern (for 'n' and '&').
"   - The buffer list.
"   - Global variables.
set viminfo='20,\"50

" A history of ":" commands, and a history of previous search patterns
" are remembered.
set history=50

" 'wildchar'.  It is a comma separated list of up to four parts.  Each
" part specifies what to do for each consecutive use of 'wildchar'.
set wildmode=list:full

" A list of file patterns.  A file that matches with one of these
" patterns is ignored when completing file or directory names.
set wildignore=*.o,*.obj,*.hi,*.class,.git,submodules/**

" If on Vim will wrap long lines at a character in 'breakat' rather
" than at the last character that fits on the screen.
set linebreak

" List mode: Show tabs as CTRL-I is displayed, display $ after end of line.
set list

" Strings to use in 'list' mode and for the |:list| command.  It is a
" comma separated list of string settings.
"set listchars=tab:▸\ ,trail:.,eol:¬
let &listchars = "tab:\u2192 ,extends:>,precedes:<,eol:\u00ac,trail:\u00b7"

let &showbreak = '>'

" Suffixes that get lower priority when doing tab completion for filenames.
" The default is ".bak,~,.o,.h,.info,.swp,.obj"
set suffixes=.bak,~,.o,.h,.info,.swp,.obj

" Print the line number in front of each line.
set number

" Show the line number relative to the line.
set relativenumber

" If you start editing a new file, and the 'modeline' option is on, a number
" of lines at the beginning and end of the file are checked for modelines.
set modeline

" don't insert a comment after hitting 'o' or 'O' in the Normal mode
augroup vimrc-editing-formatting
    autocmd!
    autocmd FileType * set formatoptions-=o
augroup END

" When the 'spell' option is on spellchecking will be done for these languages.
set spelllang=en

" Switches on syntax highlighting
syntax enable

" Vim can detect the type of file that is edited. This is done by checking the
" file name and sometimes by inspecting the contents of the file for specific
" text.
filetype indent plugin on
