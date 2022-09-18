-- Base file


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
vim.opt.wrap=true--allow wrapping words
vim.g.mapleader = " "--leader key is space
