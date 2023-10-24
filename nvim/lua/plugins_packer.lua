vim.cmd [[packadd packer.nvim]]

-- Change install dir
require('packer').init({
    package_root = 'D:/Config/nvim/packed'
})

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Start page
    use 'mhinz/vim-startify' -- Starting page

    -- Theme
    use 'akinsho/bufferline.nvim' -- make buffer nice looking

    -- File browser
    use 'preservim/nerdTree'          -- File browser
    use 'Xuyuanp/nerdtree-git-plugin' -- Git status
    use 'ryanoasis/vim-devicons'      -- Icon
    use 'unkiwii/vim-nerdtree-sync'   -- Sync current file

    -- File search
    use 'nvim-lua/plenary.nvim'         -- work with telescope
    use 'nvim-telescope/telescope.nvim' -- fzf

    -- Status bar
    use 'nvim-lualine/lualine.nvim'

    -- Terminal
    use 'voldikss/vim-floaterm' -- Float terminal

    -- Code intellisense
    -- Language server protocol (LSP)
    use 'williamboman/mason.nvim'           -- LSP, DAP, Linter Manager
    use 'williamboman/mason-lspconfig.nvim' -- Work with nvim-lspconfig
    use 'neovim/nvim-lspconfig'             -- builtin lsp nvim
    use 'jiangmiao/auto-pairs'              -- Parenthesis auto
    use 'alvan/vim-closetag'                -- Auto close tag
    use 'mattn/emmet-vim'                   -- Emmet snippet
    use 'onsails/lspkind.nvim'              -- styling the suggestion like VSCode
    use 'hrsh7th/nvim-cmp'                  -- Suggestion
    use 'hrsh7th/cmp-nvim-lsp'              -- Suggestion source lsp
    use 'hrsh7th/cmp-buffer'                -- Suggestion source buffer
    use 'hrsh7th/cmp-path'                  -- Suggestion source path
    use 'hrsh7th/cmp-cmdline'               -- Suggestion source cmdline
    use { 'L3MON4D3/LuaSnip', tag = '*' }   -- Snippet
    -- use { 'tzachar/cmp-tabnine', after = "nvim-cmp", run = 'powershell ./install.ps1', requires = 'hrsh7th/nvim-cmp' }

    -- Code syntax highlight
    use 'yuezk/vim-js'                     -- Javascript
    use 'MaxMEllon/vim-jsx-pretty'         -- JSX/React
    use 'jackguo380/vim-lsp-cxx-highlight' -- C/C++
    use 'uiiaoo/java-syntax.vim'           -- Java
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'norcalli/nvim-colorizer.lua'      -- Make color string show it color

    -- Useful shortcut
    use 'tpope/vim-commentary'   -- Comment code
    use 'kylechui/nvim-surround' -- Change surround

    -- Source code version control
    use 'tpope/vim-fugitive'      -- Git infomation
    use 'tpope/vim-rhubarb'       -- GBoard, open code on GitHub
    use 'airblade/vim-gitgutter'  -- Git show changes
    use 'samoshkin/vim-mergetool' -- Git merge
end)
