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
