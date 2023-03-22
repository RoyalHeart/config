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
    use 'tribela/vim-transparent'

    -- File browser
    use 'preservim/nerdTree' -- File browser
    use 'Xuyuanp/nerdtree-git-plugin' -- Git status
    use 'ryanoasis/vim-devicons' -- Icon
    use 'unkiwii/vim-nerdtree-sync' -- Sync current file

    -- File search
    use 'nvim-lua/plenary.nvim' --work with telescope
    use 'nvim-telescope/telescope.nvim' -- fzf

    -- Status bar
    use 'nvim-lualine/lualine.nvim'

    -- Terminal
    use 'voldikss/vim-floaterm' -- Float terminal

    -- Code intellisense
    -- Language server protocol (LSP)
    use 'williamboman/mason.nvim' -- LSP, DAP, Linter Manager
    use 'williamboman/mason-lspconfig.nvim' -- Work with nvim-lspconfig
    use 'neovim/nvim-lspconfig' --builtin lsp nvim
    use 'jiangmiao/auto-pairs' -- Parenthesis auto
    use 'alvan/vim-closetag'
    use 'mattn/emmet-vim'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use('L3MON4D3/LuaSnip', { ['tag'] = 'v<CurrentMajor>.*' })
    -- use('tzachar/cmp-tabnine', { ['do'] = './install.ps1' })
    use { 'codota/tabnine-nvim', build = "pwsh.exe -File .\\dl_binaries.ps1" }
    use {'tzachar/cmp-tabnine', after = "nvim-cmp", run='powershell ./install.ps1', requires = 'hrsh7th/nvim-cmp'}

    -- Code syntax highlight
    use 'yuezk/vim-js' -- Javascript
    use 'MaxMEllon/vim-jsx-pretty' -- JSX/React
    use 'jackguo380/vim-lsp-cxx-highlight' -- C/C++
    use 'uiiaoo/java-syntax.vim' -- Java
    use('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })
    use 'norcalli/nvim-colorizer.lua' -- make color string show it color
    use 'onsails/lspkind.nvim'

    -- Easy comment
    use 'tpope/vim-commentary'

    -- Source code version control
    use 'tpope/vim-fugitive' -- Git infomation
    use 'tpope/vim-rhubarb'
    use 'airblade/vim-gitgutter' -- Git show changes
    use 'samoshkin/vim-mergetool' -- Git merge
end)
