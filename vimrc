set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Keep Plugin commands between vundle#begin/end.
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'majutsushi/tagbar.git'
Plugin 'derekwyatt/vim-scala.git'
Plugin 'rking/ag.vim.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'junegunn/goyo.vim.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on
syntax on

" Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args='--ignore E501,W503,W504'
let g:syntastic_python_flake8_exec='~/.virtualenvs/scratch-3.6/bin/flake8'

" NERDTree settings
let NERDTreeIgnore = ['\.pyc$', '__pycache__', 'dist', 'target', '.*egg-info$', 'checkpoints'] 

" TagBar settings
let g:tagbar_sort = 0

" Shortcuts
" Insert mode shortcuts New line without insert mode
nmap <CR> o<Esc>
" F4 to toggle search match highlighting
noremap <F4> :set hlsearch! hlsearch?<CR>
" TagBar toggle
noremap <F8> :TagbarToggle<CR>

" Use Ctrl-P to FZF
noremap <c-p> :FZF<cr>

" Goyo settings
let g:goyo_width = 120
let g:goyo_margin_top = 6
let g:goyo_margin_botoom = 6

imap jj <Esc>

set expandtab
set backupdir=~/vim-tmp,.
set directory=~/vim-tmp,.
set foldmethod=indent
set clipboard+=unnamed
set number
set hlsearch

" Automatically reload files if the change on the disk
set autoread

" Simplify split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" open ctag in vertical split
map <C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" vv to generate new vertical split
nnoremap <silent> vv <C-w>v


"" File type specific settings
autocmd FileType python setlocal colorcolumn=88
