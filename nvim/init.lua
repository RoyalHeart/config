require('base')
require('mapping')
require('plugins_packer')
require('color') -- has custom highlight

-- Other setting/plugin:
vim.cmd [[
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
  execute 'source' setting_file
endfor
]]
