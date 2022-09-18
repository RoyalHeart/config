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
