" NerdTree: A file system explorer for the vim editor

Plug 'scrooloose/nerdtree'

" open Nerd Tree in folder of file in active buffer
nnoremap <silent> <F4> :NERDTreeToggle %:p:h<CR>  " NerdTree Toggle (file browser)
inoremap <silent> <F4> <ESC>:NERDTreeToggle %:p:h<CR>

" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" quick find the file location in nerd tree
nnoremap <silent> <S-M-l> :call NERDTreeToggleAndFind()<cr>

function! NERDTreeToggleAndFind()
    if (exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1)
        execute ':NERDTreeClose'
    else
        execute ':NERDTreeFind'
    endif
endfunction

" vim:ft=vim
