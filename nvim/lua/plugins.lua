local Plug = vim.fn['plug#']

vim.call('plug#begin', 'D:/Config/nvim/plugged')

-- Start page
Plug 'mhinz/vim-startify' -- Starting page

-- Theme
Plug 'akinsho/bufferline.nvim' -- make buffer nice looking
Plug 'tribela/vim-transparent'

-- File browser
Plug 'preservim/nerdTree' -- File browser
Plug 'Xuyuanp/nerdtree-git-plugin' -- Git status
Plug 'ryanoasis/vim-devicons' -- Icon
Plug 'unkiwii/vim-nerdtree-sync' -- Sync current file

-- File search
Plug 'nvim-lua/plenary.nvim' --work with telescope
Plug 'nvim-telescope/telescope.nvim' -- fzf

-- Status bar
Plug 'nvim-lualine/lualine.nvim'

-- Terminal
Plug 'voldikss/vim-floaterm' -- Float terminal

-- Code intellisense
-- Language server protocol (LSP)
Plug 'williamboman/mason.nvim' -- LSP, DAP, Linter Manager
Plug 'williamboman/mason-lspconfig.nvim' -- Work with nvim-lspconfig
Plug 'neovim/nvim-lspconfig' --builtin lsp nvim
Plug 'jiangmiao/auto-pairs' -- Parenthesis auto
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug('L3MON4D3/LuaSnip', { ['tag'] = 'v<CurrentMajor>.*' })
-- Plug('tzachar/cmp-tabnine', { ['do'] = 'powershell ./install.ps1' })

-- Code syntax highlight
Plug 'yuezk/vim-js' -- Javascript
Plug 'MaxMEllon/vim-jsx-pretty' -- JSX/React
Plug 'jackguo380/vim-lsp-cxx-highlight' -- C/C++
Plug 'uiiaoo/java-syntax.vim' -- Java
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
Plug 'norcalli/nvim-colorizer.lua' -- make color string show it color
Plug 'onsails/lspkind.nvim'

-- Easy comment
Plug 'tpope/vim-commentary'

-- Source code version control
Plug 'tpope/vim-fugitive' -- Git infomation
Plug 'tpope/vim-rhubarb'
Plug 'airblade/vim-gitgutter' -- Git show changes
Plug 'samoshkin/vim-mergetool' -- Git merge

vim.call('plug#end')
