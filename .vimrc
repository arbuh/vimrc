" Syntax/spelling/text
syntax enable
set spell spelllang=en_gb
set encoding=utf-8

" Search
set ignorecase
set smartcase
set hlsearch
set incsearch

" Indention
set autoindent
set expandtab

" Appearance
set guifont=Monaco:h16
set background=dark
colorscheme monokai
set nu
set linebreak
set scrolloff=1
set laststatus=2

" Key mapping
let mapleader = ";"

" Custom syntax colouring
autocmd BufNewFile,BufRead *.geojson set syntax=json

" Custom commands
command Pretty %!python -m json.tool

" Vundle
set nocompatible
filetype off                " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
filetype plugin indent on   " re-enable file-type

" Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'

call vundle#end()            " required
filetype plugin indent on    " required

" Airline
let g:airline_theme='qwq'
