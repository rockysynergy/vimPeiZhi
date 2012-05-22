"+++ Call pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
"+++ Tab key produces 4 spaces, and tab characters are converted to spaces
set tabstop=4
set shiftwidth=4
set expandtab
set background=dark
set number
"+++ when you start searching text with /, search is performed at every new
" character insertion
set incsearch
set nopaste
set autoindent
set fileformats=unix,dos
syntax on
filetype on
filetype indent on 
"++ Set for php omini autocomplete
filetype plugin on
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" " check syntax with Ctrl + L
autocmd FileType php noremap <C-L> :!/usr/bin/env php -l %<CR>

