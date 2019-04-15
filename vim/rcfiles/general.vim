" This option has the effect of making Vim either more Vi-compatible, or
" make Vim behave in a more useful way.
set nocompatible

" Sets the character encoding used inside Vim.  It applies to text in
" the buffers, registers, Strings in expressions, text stored in the
" viminfo file, etc.
set encoding=utf-8

" When 'fileencoding' is different from 'encoding', conversion will be
" done when writing the file.
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

" Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert
" mode.
set backspace=indent,eol,start

" Copy indent from current line when starting a new line (typing <CR>
" in Insert mode or when using the "o" or "O" command).
set autoindent

" Allow have unwritten file changes to hidden in the buffer without being force
" to write or undo your changes first.
set hidden

" Maximum width of text that is being inserted.  A longer line will be
" broken after white space to get this width.
set textwidth=80

" When non-empty, the viminfo file is read upon startup and written
" when exiting Vim (see |viminfo-file|).
set viminfo='20,\"50

" A history of ":" commands, and a history of previous search patterns
" are remembered.
set history=50

" 'wildchar'.  It is a comma separated list of up to four parts.  Each
" part specifies what to do for each consecutive use of 'wildchar'.
set wildmode=list:full

" A list of file patterns.  A file that matches with one of these
" patterns is ignored when completing file or directory names, and
" influences the result of |expand()|, |glob()| and |globpath()| unless
" a flag is passed to disable this.
set wildignore=*.o,*.obj,*.hi,*.class,.git,submodules/**

" If on Vim will wrap long lines at a character in 'breakat' rather
" than at the last character that fits on the screen.  Unlike
set linebreak

" List mode: Show tabs as CTRL-I is displayed, display $ after end of
" line.  Useful to see the difference between tabs and spaces and for
" trailing blanks.
set list

" Strings to use in 'list' mode and for the |:list| command.  It is a
" comma separated list of string settings.
"set listchars=trail:·,tab:▷·,precedes:«,extends:»
set list listchars=tab:▸\ ,trail:.,eol:¬


" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf
            \,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" Print the line number in front of each line.
set number

" Show the line number relative to the line with the cursor in front of each
" line.
set relativenumber

" A comma separated list of options for Insert mode completion
" |ins-completion|.
" removing preview fixes popup menu disappearing problem with cursorcolumn
set completeopt-=preview

" If you start editing a new file, and the 'modeline' option is on, a
" number of lines at the beginning and end of the file are checked for
" modelines.
set modeline

" A comma separated list of word list names.  When the 'spell' option is
" on spellchecking will be done for these languages.
set spelllang=en


" The ":syntax enable" command will keep your current color settings.  This
" allows using ":highlight" commands to set your preferred colors before or
" after using this command.  If you want Vim to overrule your settings with the
" defaults, use: >
"         :syntax on
syntax enable

" Vim can detect the type of file that is edited.  This is done by checking the
" file name and sometimes by inspecting the contents of the file for specific
" text.
filetype indent plugin on