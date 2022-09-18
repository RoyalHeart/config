function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

local Plug = vim.fn['plug#']

vim.call('plug#begin', 'D:/Config/nvim/plugged')

-- Start page
  Plug 'mhinz/vim-startify'                     -- Starting page

-- Theme
  Plug 'joshdick/onedark.vim'                   -- Dark theme
  Plug 'folke/tokyonight.nvim'                  -- Dark tokyonight
  Plug ('catppuccin/nvim', {as = 'catppuccin'})

-- LSP
  Plug 'neovim/nvim-lspconfig'                  -- LSP config

-- File browser
  Plug 'preservim/nerdTree'                     -- File browser  
  Plug 'Xuyuanp/nerdtree-git-plugin'            -- Git status
  Plug 'ryanoasis/vim-devicons'                 -- Icon
  Plug 'unkiwii/vim-nerdtree-sync'              -- Sync current file 

-- File search
  Plug('junegunn/fzf', {
  ['do'] = function()
    vim.call('fzf#install')
  end
})
  Plug 'junegunn/fzf.vim'--Fuzzy Finder

-- Status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

-- Terminal
  Plug 'voldikss/vim-floaterm'                  -- Float terminal

-- Code intellisense
  -- Language server protocol (LSP) 
  Plug('neoclide/coc.nvim', {branch = 'release'})
  Plug 'pappasam/coc-jedi'                     -- Jedi language server 
  Plug 'jiangmiao/auto-pairs'                   -- Parenthesis auto 
  Plug 'alvan/vim-closetag'
  Plug 'mattn/emmet-vim' 
  Plug 'preservim/nerdcommenter'                -- Comment code 

-- Code syntax highlight
  Plug 'yuezk/vim-js'                           -- Javascript
  Plug 'MaxMEllon/vim-jsx-pretty'               -- JSX/React
  Plug 'jackguo380/vim-lsp-cxx-highlight'       -- C/C++
  Plug 'uiiaoo/java-syntax.vim'                 -- Java

-- Easy comment
  Plug 'tpope/vim-commentary'

-- Source code version control 
  Plug 'tpope/vim-fugitive'                     -- Git infomation 
  Plug 'tpope/vim-rhubarb' 
  Plug 'airblade/vim-gitgutter'                 -- Git show changes 
  Plug 'samoshkin/vim-mergetool'                -- Git merge

vim.call('plug#end')
-- set catpuccin theme
vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
require("catppuccin").setup()
vim.cmd [[colorscheme catppuccin]]

-- Basic config
vim.opt.autoindent = true--indent the same in new line
vim.opt.cc='80'--column border
vim.opt.clipboard='unnamedplus'--using system clipboard
vim.opt.hlsearch = true--highlight search
vim.opt.ignorecase = true--case insensitive
vim.opt.incsearch = true--incremental search
vim.opt.list = true--show the white spaces
vim.opt.listchars = {space = '·', tab = '>>'}--show how to render space,tab
vim.opt.mouse='a'--enable click with mouse
vim.opt.number = true--show line number
vim.opt.relativenumber = true--show relative line number
vim.opt.scrolloff=10--auto-scroll when n lines from border
vim.opt.showmatch = true--show matching
vim.opt.shiftwidth=4--width for autoindent
vim.opt.softtabstop=4--see multiples spaces with tab
vim.opt.tabstop=4--spaces after tab
vim.opt.textwidth=80--textwidth max
vim.opt.timeoutlen=400--timeout between keys
vim.opt.ttyfast = true--fast scrolling
vim.opt.wildmenu=true
vim.opt.wildmode={'list','longest','full'}--bash-like tab completion
vim.g.mapleader = " "--leader key is space
--Remap keys:
-- normal mode:
nmap('<Space>', '<Nop>') -- make leader key no weird
nmap('Y', 'y$') -- Y behave like D
nmap('j', 'gj')
nmap('k', 'gk')

-- insert mode:
--  undo more fine-grained
imap(',', ',<C-g>u')
imap('.', '.<C-g>u')
imap('?', '?<C-g>u')
--  esc
imap('jk', '<Esc>')

-- visual mode
--  go through wrap
vmap('j', 'gj')
vmap('k', 'gk')

-- Other setting/plugin:
vim.cmd [[
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
  execute 'source' setting_file
endfor
]]
