require('plugins')
require('base')
require('mapping')

-- set catpuccin theme
vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
require("catppuccin").setup()
vim.cmd [[colorscheme catppuccin]]

-- Other setting/plugin:
vim.cmd [[
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
  execute 'source' setting_file
endfor
]]
