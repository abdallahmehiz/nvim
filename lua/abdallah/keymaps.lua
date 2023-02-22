-- this file contains all of my custom keymaps

-- shorter function name
local keymap = vim.api.nvim_set_keymap

-- global
-- Disable arrow keys
keymap('', '<Up>', '<Nop>', { noremap = true, silent = true })
keymap('', '<Down>', '<Nop>', { noremap = true, silent = true })
keymap('', '<Left>', '<Nop>', { noremap = true, silent = true })
keymap('', '<Right>', '<Nop>', { noremap = true, silent = true })
