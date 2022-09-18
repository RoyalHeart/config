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
