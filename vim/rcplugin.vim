" COLORSCHEMES {{{
Plug 'w0ng/vim-hybrid'
Plug 'crusoexia/vim-monokai'
Plug 'tomasr/molokai'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula'  }
Plug 'NLKNguyen/papercolor-theme'
Plug 'arcticicestudio/nord-vim'

" }}}

" NAVIGATION{{{
" easymotion - simpler way to use some motions in vim
Plug 'easymotion/vim-easymotion'

" Disable default mappings
let g:EasyMotion_do_mapping = 0

" s{char}{char} to move to {char}{char}
nmap              s             <Plug>(easymotion-overwin-f2)

" <Leader>f{char} to move to {char}
map      <silent> <Leader>jj    <Plug>(easymotion-j)
map      <silent> <Leader>jk    <Plug>(easymotion-k)

" Move to line
map      <silent> <Leader>jl    <Plug>(easymotion-bd-jk)
nmap     <silent> <Leader>jl    <Plug>(easymotion-overwin-line)

" Move to word
map      <silent> <Leader>jw    <Plug>(easymotion-bd-w)
nmap     <silent> <Leader>jw    <Plug>(easymotion-overwin-w)

" }}}

" MISCELLANEOUS{{{

" 1.1 Insert or delete brackets, parens, quotes in pair{{{
Plug 'jiangmiao/auto-pairs'

let g:AutoPairsShortcutToggle = ''

" }}}

" 1.2 Easy Align - operators for aligning characters across lines{{{
Plug 'junegunn/vim-easy-align'

command! ReformatTable normal vip<cr>**|
nmap              <leader>rt    :ReformatTable<cr>

vmap              <cr>          <Plug>(EasyAlign)

" }}}

" 1.3 Display the indention levels with thin vertical lines{{{
Plug 'yggdroot/indentline'

" }}}

" 1.4 See the contents of registers{{{
Plug 'junegunn/vim-peekaboo'

" }}}

" 1.5 Vim plugin for intensely orgasmic commenting{{{
Plug 'scrooloose/nerdcommenter'
" }}}

" 1.6 Browse the tags of the current file and get an overview of its structure{{{
Plug 'majutsushi/tagbar'

" }}}

" 1.7 Underlines the word under the cursor{{{
Plug 'itchyny/vim-cursorword'
" }}}

" 1.8 VIM Surround{{{
Plug 'tpope/vim-surround'
" }}}

" 1.9 The undo history visualizer for vim{{{
Plug 'mbbill/undotree'
nnoremap <silent> <leader>ut    :UndotreeToggle<cr>
" }}}

" 1.10 Combine with netrw to create a delicious salad dressing{{{
Plug 'tpope/vim-vinegar'
" }}}

" 1.11 Status line extracted from space-vim{{{
"Plug 'liuchengxu/eleline.vim'
" }}}

" }}}

" GIT{{{
" Fugitive - Vim meets git. Gstatus, Gdiff, etc.
Plug 'tpope/vim-fugitive'

"set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" A Vim plugin which shows a git diff in the sign column. It shows which lines have been added, modified, or removed.
Plug 'airblade/vim-gitgutter'
if has('win32')
    let g:gitgutter_git_executable = 'C:\Program Files\Git\bin\git.exe'
endif

" }}}

" SEARCH{{{
" fzf - the fuzzy finder of all the things

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

if executable('rg')
    " Setting ripgrep as the default source for fzf
    let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore-vcs --hidden'

    "noremap <silent> <leader>he :Helptags<cr>

    " <C-p> to search files
    " nnoremap <silent> <C-p>         :Files<cr>

    " <M-p> for open buffers
    " nnoremap <silent> <M-p>         :Buffers<cr>

    " <M-S-p> for MRU
    " nnoremap <silent> <M-S-p>       :History<cr>

    " Better command history with q:
    " command! CmdHist call fzf#vim#command_history({'right': '40'})
    " nnoremap          q:            :CmdHist<CR>

    " Better search history
    " command! QHist call fzf#vim#search_history({'right': '40'})
    " nnoremap          q/            :QHist<CR>

    " --column: Show column number
    " --line-number: Show line number
    " --no-heading: Do not show file headings in results
    " --fixed-strings: Search term as a literal string
    " --ignore-case: Case insensitive search
    " --no-ignore: Do not respect .gitignore, etc...
    " --hidden: Search hidden files and folders
    " --follow: Follow symlinks
    " --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
    " --color: Search color options
    let g:rg_command = '
                \ rg --column --line-number --no-heading
                \ --fixed-strings --ignore-case --no-ignore
                \ --hidden --follow --color "always"
                \ --glob "*.{js,json,config,py,cpp,c,cs,conf,vim}"
                \ --glob "!{.git}/*" '

    command! -bang -nargs=* Find call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)
    command! -bang -nargs=* Ack call fzf#vim#ag(<q-args>, {'down': '25%'})

    "nnoremap          <M-F>         :Ack<CR>

endif

Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!'  }
" <C-p> to search files
nnoremap <silent> <C-p>         :Clap files<cr>
nnoremap <silent> <M-p>         :Clap buffers<cr>
nnoremap          q:            :Clap command_history<CR>
nnoremap          q/            :Clap search_history<CR>
nnoremap <silent> <leader>fr    :Clap history<cr>
nnoremap <silent> <C-Enter>     :Clap providers<cr>

" }}}

" LANGUAGE {{{
" 1. Support {{{
" 1.1 Language Server Protocol support for vim and neovim{{{
Plug 'autozimu/LanguageClient-neovim', {
            \ 'branch': 'next',
            \ 'do': 'powershell -executionpolicy bypass -File install.ps1',
            \ }

function SetLSPShortcuts()
    nnoremap <leader>ld :call LanguageClient#textDocument_definition()<CR>
    nnoremap <leader>lr :call LanguageClient#textDocument_rename()<CR>
    nnoremap <leader>lf :call LanguageClient#textDocument_formatting()<CR>
    nnoremap <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
    nnoremap <leader>lx :call LanguageClient#textDocument_references()<CR>
    nnoremap <leader>la :call LanguageClient_workspace_applyEdit()<CR>
    nnoremap <leader>lc :call LanguageClient#textDocument_completion()<CR>
    nnoremap <leader>lh :call LanguageClient#textDocument_hover()<CR>
    nnoremap <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
    nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>
endfunction()

augroup LSP
    autocmd!
    autocmd FileType cpp,c,fsharp call SetLSPShortcuts()
augroup END

" }}}

" 1.2 Code auto completion{{{
if !has('win32unix')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

" }}}

" 1.2 Displays function signatures from completions in the command line{{{
Plug 'Shougo/echodoc.vim'

set cmdheight=2
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'signature'

if has('nvim') && exists('*nvim_open_win')
    augroup FSharpShowTooltip
        autocmd!
        autocmd CursorHold *.fs,*.fsi,*.fsx call fsharp#showTooltip()
    augroup END
endif

" }}}

" 1.3 Format code with one button press (or automatically on save){{{
Plug 'Chiel92/vim-autoformat'
" }}}

" }}}

" 2. Languages{{{
" 2.1 F# support{{{
if !has('win32unix')
    Plug 'ionide/Ionide-vim', {
                \ 'do': 'powershell -executionpolicy bypass -File install.ps1',
                \}
endif

" }}}

" 2.2 Markdown preview plugin for (neo)vim{{{
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" }}}

" 2.3 OmniSharp-vim is a plugin for Vim to provide IDE like abilities for C#{{{
if !has('win32unix')
    Plug 'OmniSharp/omnisharp-vim'

    let g:OmniSharp_selector_ui = 'fzf'    " Use fzf.vim

    augroup omnisharp_commands
        autocmd!

        " Show type information automatically when the cursor stops moving.
        " Note that the type is echoed to the Vim command line, and will overwrite
        " any other messages in this space including e.g. ALE linting messages.
        autocmd CursorHold *.cs OmniSharpTypeLookup

        " The following commands are contextual, based on the cursor position.
        autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
        autocmd FileType cs nmap <silent> <buffer> <Leader>osfu <Plug>(omnisharp_find_usages)
        autocmd FileType cs nmap <silent> <buffer> <Leader>osfi <Plug>(omnisharp_find_implementations)
        autocmd FileType cs nmap <silent> <buffer> <Leader>ospd <Plug>(omnisharp_preview_definition)
        autocmd FileType cs nmap <silent> <buffer> <Leader>ospi <Plug>(omnisharp_preview_implementations)
        autocmd FileType cs nmap <silent> <buffer> <Leader>ost <Plug>(omnisharp_type_lookup)
        autocmd FileType cs nmap <silent> <buffer> <Leader>osd <Plug>(omnisharp_documentation)
        autocmd FileType cs nmap <silent> <buffer> <Leader>osfs <Plug>(omnisharp_find_symbol)
        autocmd FileType cs nmap <silent> <buffer> <Leader>osfx <Plug>(omnisharp_fix_usings)
        autocmd FileType cs nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
        autocmd FileType cs imap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)

        " Navigate up and down by method/property/field
        autocmd FileType cs nmap <silent> <buffer> [[ <Plug>(omnisharp_navigate_up)
        autocmd FileType cs nmap <silent> <buffer> ]] <Plug>(omnisharp_navigate_down)
        " Find all code errors/warnings for the current solution and populate the quickfix window
        autocmd FileType cs nmap <silent> <buffer> <Leader>osgcc <Plug>(omnisharp_global_code_check)
        " Contextual code actions (uses fzf, CtrlP or unite.vim selector when available)
        autocmd FileType cs nmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
        autocmd FileType cs xmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
        " Repeat the last code action performed (does not use a selector)
        autocmd FileType cs nmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)
        autocmd FileType cs xmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)

        autocmd FileType cs nmap <silent> <buffer> <Leader>os= <Plug>(omnisharp_code_format)

        autocmd FileType cs nmap <silent> <buffer> <Leader>osnm <Plug>(omnisharp_rename)

        autocmd FileType cs nmap <silent> <buffer> <Leader>osre <Plug>(omnisharp_restart_server)
        autocmd FileType cs nmap <silent> <buffer> <Leader>osst <Plug>(omnisharp_start_server)
        autocmd FileType cs nmap <silent> <buffer> <Leader>ossp <Plug>(omnisharp_stop_server)
    augroup END

    " Enable snippet completion, using the ultisnips plugin
    let g:OmniSharp_want_snippet=1

endif
" }}}

" 2.4 Better JSON for VIM{{{
Plug 'elzr/vim-json'
" }}}

" }}}

" 3. Linting{{{
" Providing linting (syntax checking and semantic errors)
Plug 'dense-analysis/ale'

" Install linters
" pip install flake8
" pip install vim-vint

let g:ale_linters = {
            \   'python': ['flake8'],
            \   'cs': ['OmniSharp'],
            \   'vim': ['vint'],
            \}
let g:ale_fixers = {
            \   'python': ['remove_trailing_lines', 'trim_whitespace', 'autopep8']
            \}

let g:ale_set_quickfix = 1
let g:ale_list_window_size = 5

" }}}

" 4. Snippets {{{
" Track the engine.
if !has('win32unix')
    Plug 'SirVer/ultisnips'

    " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"

    " If you want :UltiSnipsEdit to split your window.
    let g:UltiSnipsEditSplit="vertical"

endif

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" }}}

" }}}

" vim:ft=vim
