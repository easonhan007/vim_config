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
