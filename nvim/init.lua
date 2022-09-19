require('base')
require('mapping')
require('plugins')
require('color')-- has custom highlight

-- Other setting/plugin:
vim.cmd [[
for setting_file in split(glob(stdpath('config').'/settings/*.vim'))
  execute 'source' setting_file
endfor
]]
