set nocompatible	        " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
set textwidth=80            " set an 80 textwidth
set scrolloff=10            " set auto scrolling when at 10 lines from border
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set timeoutlen=400          " timeout between keys
let mapleader=" "           " leader key is space
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim" Directory to store backup files.

" Remap keys:
" insert mode:
inoremap <Space> <Space><C-g>u
inoremap , ,<C-g>u
inoremap . .<C-g>u
inoremap jk <Esc>
inoremap jj <Esc>
inoremap kj <Esc>

" normal mode:
nnoremap <SPACE> <Nop>
nnoremap j gj
nnoremap k gk

" visual mode:
vnoremap j gj
vnoremap k gk
