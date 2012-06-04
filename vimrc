"+++ Call pathogen need to be at top
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
"++ Syntax highlighting for typoscript
autocmd BufNewFile,BufRead *.ts setfiletype typoscript
"+++ Tab key produces 4 spaces, and tab characters are converted to spaces
set tabstop=4
set shiftwidth=4
set expandtab
set background=dark
set number
highlight PmenuSel ctermfg=7
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
"++Insert date
iab <expr> ddate strftime("%Y-%m-%d")
"++ Cap for Command-T
noremap <leader>f <Esc>:CommandT<CR>
noremap <leader>F <Esc>:CommandTFlush<CR>
noremap <leader>b <Esc>:CommandTBuffer<CR>
"++ Cap for NERCtree
noremap <leader>t <Esc>:NERCTree<CR>
"++ The vim-task configurationi -- The task file needs to be opened as the first file
autocmd BufNewFile,BufRead todo.txt,*.task,*.tasks setfiletype task
inoremap <silent> <buffer> <Leader>m <ESC>:call Toggle_task_status()<CR>i
noremap <silent> <buffer> <Leader>m :call Toggle_task_status()<CR>
"++Automatically save and load fold
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview
set viewdir=~/.vim.view
" Folding and unfolding
noremap ,f :set foldmethod=indent<cr>zC<cr>
noremap ,F :set foldmethod=manual<cr>zR<cr>
" The escape key is a long ways away. This maps it to the sequence 'kj'
:map! kj <esc>
" Soft wrap config
command! -nargs=* Wrap set wrap linebreak nolist
" vmap <C-j> gj
" vmap <C-k> gk
" vmap <C-4> g$
" vmap <C-6> g^
" vmap <C-0> g^
" nmap <C-j> gj
" nmap <C-k> gk
" nmap <C-4> g$
" nmap <C-6> g^
" nmap <C-0> g^
