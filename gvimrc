"=========================================
"++++++Setting imported from vimrc
"=========================================
"+++ Call pathogen need to be at top
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
"++ Syntax highlighting for typoscript
"autocmd BufNewFile,BufRead *.ts setfiletype typoscript
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
set nocompatible
syntax on
filetype on
filetype indent on 
"++ Set for php omini autocomplete
filetype plugin on
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" " check syntax with Ctrl + L
autocmd FileType php noremap <C-L> :!/usr/bin/env php -l %<CR>
"++ The vim-task configuration
autocmd BufNewFile,BufRead todo.txt,*.task,*.tasks setfiletype task
inoremap <silent> <buffer> <Leader>m <ESC>:call Toggle_task_status()<CR>i
noremap <silent> <buffer> <Leader>m :call Toggle_task_status()<CR>
"++Insert date
iab <expr> ddate strftime("%Y-%m-%d")
"++ Map for Command-T
noremap <leader>f <Esc>:CommandT<CR>
noremap <leader>F <Esc>:CommandTFlush<CR>
noremap <leader>b <Esc>:CommandTBuffer<CR>
"++ Map for NERDtree
noremap <leader>t <Esc>:NERDTree<CR>

"=========================================
"++++++Setting for gvim
"=========================================
"++ Solarized coloscheme config
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized
"++ Set up font and open in full screen
set gfn=Monospace\ 15
"set lines=999 columns=999
