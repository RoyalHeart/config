local status, telescope = pcall(require, "telescope.builtin")
if (not status) then return end

vim.keymap.set('n', '<leader>f', function() telescope.find_files() end) -- open fzf
