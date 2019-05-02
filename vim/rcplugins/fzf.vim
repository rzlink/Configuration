" fzf - the fuzzy finder of all the things

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

if executable('rg')
    " Setting ripgrep as the default source for fzf
    let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore-vcs --hidden'

    "noremap <silent> <leader>he :Helptags<cr>

    " <C-p> to search files
    nnoremap <silent> <C-p>         :Files<cr>

    " <M-p> for open buffers
    nnoremap <silent> <M-p>         :Buffers<cr>

    " <M-S-p> for MRU
    nnoremap <silent> <M-S-p>       :History<cr>

    " Better command history with q:
    command! CmdHist call fzf#vim#command_history({'right': '40'})
    nnoremap          q:            :CmdHist<CR>

    " Better search history
    command! QHist call fzf#vim#search_history({'right': '40'})
    nnoremap          q/            :QHist<CR>

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

    nnoremap          <M-F>         :Ack<CR>

endif

" vim:ft=vim
