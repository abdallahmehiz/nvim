-- Basic Neovim options, use ':help options' for more info
local options = {
-- vim.opt.backup = false 		-- Create backup file
clipboard = "unnamedplus",	-- Use system clipboard
-- cmdheight = 2,			-- More space in nvim commandline for better output readability
conceallevel = 0,		-- Show text inside `` in markdown
fileencoding = "utf-8",		-- Set file encoding to utf-8
hlsearch = true,		-- Highlight text searches
ignorecase = true,		-- Ignore case when searching
mouse = a,			-- Enable mouse support for all modes
pumheight = 10,			-- Increase popupmenu height
showmode = true,		-- Show current mode
showtabline = 2,		-- Always show tabs
smartcase = true,		-- Smart case
smartindent = true,		-- Smarter indenting
splitbelow = true,		-- Force all horizontal splits to open up below current window
splitright = true,		-- Force all vertical splits to open up to the right of current window
termguicolors = true,		-- set term gui colors
timeoutlen = 1000,		-- time to wait for a mapped sequence to complete
undofile = true,		-- enable persistent undo
updatetime = 300,		-- faster completion (default = 4000)
writebackup = false,		-- if file is being edited by another program do not 
expandtab = true,		-- convert tabs into spaces (literal typing spaces)
shiftwidth = 2,			-- indentations consist of 2 spaces
tabstop= 2, 			-- insert 2 spaces with each tab
cursorline = true,		-- highlight the current line
number = true,			-- add numbered lines
relativenumber = false,		-- use non-relative numbered lines
-- numberwidth = 3,		-- set number line width to 3 (default = 4)
-- signcolumn = "yes",		-- always show the sign column 
wrap = false,			-- remove text wrapping for really long lines
}

-- loop and set options
for k, v in pairs(options) do
vim.opt[k] = v
end
