syntax on

" show line numbers
set number

" in insert mode use <c-d> to delete current line
inoremap <c-d> <esc>ddo

let mapleader = ","

" open .vimrc quickly
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" reload .vimrc file
nnoremap <leader>sv :source $MYVIMRC<cr>

inoremap jk <esc>

inoremap ( ()<ESC>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap { {}<ESC>i
inoremap } <c-r>=ClosePair('}')<CR>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap < <><ESC>i
inoremap > <c-r>=ClosePair('>')<CR>

function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf
