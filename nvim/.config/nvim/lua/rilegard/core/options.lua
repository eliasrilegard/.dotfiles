local set = vim.opt

set.number = true
set.relativenumber = true

set.showmode = false

-- Tabs & Indentation
set.tabstop = 2 -- 2 spaces for tabs
set.shiftwidth = 2 -- 2 spaces for indent width
set.expandtab = true -- Expand tab into spaces
set.autoindent = true -- Copy indent from current line when starting new one

set.wrap = false

-- Search Settings
set.ignorecase = true -- Ignore case when searching
set.smartcase = true -- If mixed case included in search, assume case-sensitive

-- Enable termguicolors. Must use iTerm2 or any other true color terminal
set.termguicolors = true

-- Backspace
set.backspace = "indent,eol,start" -- Allow backspace on indent, end of line, or insert mode start position

-- Clipboard
set.clipboard:append("unnamedplus") -- Use system clipboard as default register

-- Split windows
set.splitright = true -- Split vertical window to the right
set.splitbelow = true -- Split horizontal window to the bottom

-- Disable swapfile
set.swapfile = false
