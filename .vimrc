" General config
" ============================

"" This must be first, because it changes other options as a side effect.
set nocompatible
"
" " Make backspace behave in a sane manner.
set backspace=indent,eol,start

" " Switch syntax highlighting on
syntax on
"
" " Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Show matching brackets when text indicator is over them
set showmatch

" Ignore case when searching
set ignorecase

" Show line numbers
set number

set encoding=utf-8
set autoread " Reloads files changed outside vim
set hidden " Buffers can exist in background
set history=1000 " Store lots of history
set shell=bash

" Indentation and Display
" ============================================

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab " Use spaces instead of tabs
set wrap " Wrap lines

" Moving around tabs, lines etc.
" ================================================

map j gj
map k gk

" Search useing space in place of '/'
map <space> /

" Delete trailing white space on save! Pretty useful :)
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
:autocmd BufWrite * :call DeleteTrailingWS()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" No need to use Esc button anymore, typying 'j+j' will do it instead
:imap jj <Esc>
" v+v in insert mode sends you to visual mode
:imap vv jjv
:vmap jj <Esc>
" i+i in visual mode sends you in insert mode
:vmap ii jji
