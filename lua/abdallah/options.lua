-- Basic Neovim options, use ':help options' for more info
-- vim.opt.backup = false 		-- Create backup file
vim.opt.clipboard = "unnamedplus"	-- Use system clipboard
vim.opt.cmdheight = 2			-- More space in nvim commandline for better output readability
vim.opt.conceallevel = 0		-- Show text inside `` in markdown
vim.opt.fileencoding = "utf-8"		-- Set file encoding to utf-8
vim.opt.hlsearch = true			-- Highlight text searches
vim.opt.ignorecase = true		-- Ignore case when searching
vim.opt.mouse = a			-- Enable mouse support for all modes
vim.opt.pumheight = 10			-- Increase popupmenu height
vim.opt.showmode = true			-- Show current mode
vim.opt.showtabline = 2			-- Always show tabs
vim.opt.smartcase = true		-- Smart case
vim.opt.smartindent = true		-- Smarter indenting
vim.opt.splitbelow = true		-- Force all horizontal splits to open up below current window
vim.opt.splitright = true		-- Force all vertical splits to open up to the right of current window
vim.opt.termguicolors = true		-- set term gui colors
vim.opt.timeoutlen = 1000		-- time to wait for a mapped sequence to complete
vim.opt.undofile = true			-- enable persistent undo
vim.opt.updatetime = 300		-- faster completion (default = 4000)
vim.opt.writebackup = false		-- if file is being edited by another program do not 
vim.opt.expandtab = true		-- convert tabs into spaces (literal typing spaces)
vim.opt.shiftwidth = 2			-- indentations consist of 2 spaces
vim.opt.tabstop= 2 			-- insert 2 spaces with each tab
vim.opt.cursorline = true		-- highlight the current line
vim.opt.number = true			-- add numbered lines
vim.opt.relativenumber = false		-- use non-relative numbered lines
vim.opt.numberwidth = 3			-- set number line width to 3 (default = 4)
vim.opt.signcolumn = "yes"		-- always show the sign column
vim.opt.wrap = false			-- remove text wrapping for really long lines
