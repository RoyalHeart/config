call plug#begin(stdpath('config').'/plugged')
" Start page
  Plug 'mhinz/vim-startify'                     " Starting page

" Theme
  Plug 'joshdick/onedark.vim'                   " Dark theme
  Plug 'folke/tokyonight.nvim'                  " Dark tokyonight

" LSP
  Plug 'neovim/nvim-lspconfig'                  " LSP config

" File browser
  Plug 'preservim/nerdTree'                     " File browser  
  Plug 'Xuyuanp/nerdtree-git-plugin'            " Git status
  Plug 'ryanoasis/vim-devicons'                 " Icon
  Plug 'tiagofumo'
          \ .'/vim-nerdtree-syntax-highlight'
  Plug 'unkiwii/vim-nerdtree-sync'              " Sync current file 

" File search
  Plug 'junegunn/fzf', 
    \ { 'do': { -> fzf#install() } }            " Fuzzy finder 
  Plug 'junegunn/fzf.vim'

" Status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

" Terminal
  Plug 'voldikss/vim-floaterm'                  " Float terminal

" Code intellisense
  Plug 'neoclide/coc.nvim', 
    \ {'branch': 'release'}                     " Language server protocol (LSP) 
  Plug 'pappasam/coc-jedi',                     " Jedi language server 
  Plug 'jiangmiao/auto-pairs'                   " Parenthesis auto 
  Plug 'alvan/vim-closetag'
  Plug 'mattn/emmet-vim' 
  Plug 'preservim/nerdcommenter'                " Comment code 
  Plug 'liuchengxu/vista.vim'                   " Function tag bar 
  Plug 'alvan/vim-closetag'                     " Auto close HTML/XML tag 
    \ { 
      \ 'do': 'yarn install '
              \ .'--frozen-lockfile '
              \ .'&& yarn build',
      \ 'branch': 'main' 
    \ }

" Code syntax highlight
  Plug 'yuezk/vim-js'                           " Javascript
  Plug 'MaxMEllon/vim-jsx-pretty'               " JSX/React
  Plug 'jackguo380/vim-lsp-cxx-highlight'       " C/C++
  Plug 'uiiaoo/java-syntax.vim'                 " Java
  
" Debugging
  Plug 'puremourning/vimspector'                " Vimspector

" Source code version control 
  Plug 'tpope/vim-fugitive'                     " Git infomation 
  Plug 'tpope/vim-rhubarb' 
  Plug 'airblade/vim-gitgutter'                 " Git show changes 
  Plug 'samoshkin/vim-mergetool'                " Git merge
call plug#end()

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

" Theme
colorscheme onedark
" Remap keys:
" insert mode:
inoremap <SPACE> <SPACE><C-g>u
inoremap , ,<C-g>u
inoremap . .<C-g>u
inoremap ? ?<C-g>u
inoremap jk <Esc>
inoremap jj <Esc>
inoremap kj <Esc>

" normal mode:
nnoremap j gj
nnoremap k gk
" make Y behave like D
nnoremap Y y$

" visual mode:
vnoremap j gj
vnoremap k gk

" Other setting
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
  execute 'source' setting_file
endfor
