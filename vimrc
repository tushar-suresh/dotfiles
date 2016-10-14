set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Keep Plugin commands between vundle#begin/end.
Plugin 'scrooloose/nerdtree.git'
Plugin 'kien/ctrlp.vim.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'majutsushi/tagbar.git'
Plugin 'derekwyatt/vim-scala.git'
Plugin 'rking/ag.vim.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on
syntax on

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](build|dist|target|checkpoints|node_modules|vendor|.*egg-info)$',
  \ 'file': '\v\.(pyc|swp|class)$',
  \ }

" Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args='--ignore E501,E731'

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

set expandtab
set backupdir=~/tmp,.
set directory=~/tmp,.
set foldmethod=indent
set clipboard+=unnamed
set number
set hlsearch
