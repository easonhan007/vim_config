set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" own plugin
Bundle 'ctrlp.vim'
Bundle 'AutoClose'
Bundle 'ZenCoding.vim'
Bundle 'EasyMotion'
Bundle 'FencView.vim'
Bundle 'The-NERD-Commenter'

syntax on
syntax enable

" show line numbers
set number

" in insert mode use <c-d> to delete current line
inoremap <c-d> <esc>ddo

let mapleader=","

" open .vimrc quickly
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" reload .vimrc file
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap cw ciw
nnoremap dw diw

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

colorscheme elflord
set guifont=Monaco:h11

set autoindent
set ai!
set smartindent
set ruler
set autochdir
set backspace=2
set shiftwidth=2 
set cindent shiftwidth=2
set hlsearch
set laststatus=2
set tabstop=2 
set expandtab

set fenc=utf-8
set encoding=utf-8

filetype indent on
filetype plugin on
filetype plugin indent on

" for NERDTree
noremap tw :NERDTree<cr> 

" run python file quickly
noremap <leader>p :!python %<cr>

" run ruby file quickly
noremap <leader>r :!ruby %<cr>

" map ctrl- m for comments in python and ruby
augroup commenter
  autocmd!
  autocmd FileType python noremap <c-m> I#<esc>
  autocmd FileType ruby noremap <c-m> I#<esc>
augroup END

filetype plugin indent on     " required!
