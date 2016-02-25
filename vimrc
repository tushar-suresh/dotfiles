set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree.git'
Plugin 'tpope/vim-fugitive.git'
Plugin 'kien/ctrlp.vim.git'
Plugin 'scrooloose/syntastic.git'
Plugin 'majutsushi/tagbar.git'
Plugin 'derekwyatt/vim-scala'
" Plugin 'altercation/vim-colors-solarized.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set expandtab
syntax on

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](build|dist|target|checkpoints|node_modules|vendor|.*egg-info)$',
  \ 'file': '\v\.(pyc|swp|class)$',
  \ }

set backupdir=~/tmp,.
set directory=~/tmp,.

" Syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 0
let g:syntastic_python_checkers = ['pep8']
let g:syntastic_python_pep8_args='--ignore=E501'
let g:pep8_ignore='E501'

" NERDTree options
let NERDTreeIgnore = ['\.pyc$', '__pycache__', 'dist', 'target', '.*egg-info$', 'checkpoints'] 

" New line without insert mode
nmap <CR> o<Esc>

set foldmethod=indent

" F4 to toggle search match highlighting
noremap <F4> :set hlsearch! hlsearch?<CR>

" TagBar options
noremap <F8> :TagbarToggle<CR>
let g:tagbar_sort = 0

set clipboard+=unnamed

set number
set hlsearch
