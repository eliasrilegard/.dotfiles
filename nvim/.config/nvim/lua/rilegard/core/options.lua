local opt = vim.opt

-- General
opt.number = true         -- Enable line numbers
opt.relativenumber = true -- Make line numbers relative
opt.wrap = false          -- Disable text wrapping
opt.scrolloff = 4         -- Keep N lines above/below cursor
opt.sidescrolloff = 4     -- Keep N lines left/right of cursor
opt.showmode = false      -- Hide "-- INSERT --" etc

-- Indentation
opt.tabstop = 2       -- Number of spaces that a <Tab> represents
opt.shiftwidth = 2    -- Number of spaces to use for each step of indentation
opt.softtabstop = -1  -- Number of spaces the cursor moves when pressing tab (negative to fall back to shiftwidth)

opt.expandtab = true  -- Convert tabs into spaces
opt.autoindent = true -- Copy indentation from current line when creating new one

-- Search
opt.ignorecase = true -- Ignore case when searching,
opt.smartcase = true  -- BUT if mixed case present, assume case-sensitive

-- Colors
opt.termguicolors = true

-- Appearance
opt.winborder = "rounded" -- Rounded borders, everywhere

-- Backspace
opt.backspace = "indent,eol,start" -- Allow removing auto-indentation, going across eol boundaries, and past the entry point of insert mode

-- Splits
opt.splitright = true -- Vertical splits go right
opt.splitbelow = true -- Horizontal splits go below

-- Swap
opt.swapfile = false
