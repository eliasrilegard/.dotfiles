vim.g.mapleader = " "

local map = vim.keymap.set

-- Clear search highlight
map("n", "<leader>ch", "<CMD>noh<CR>", { desc = "Clear highlight" })

-- Search movement keeps cursor centered
map("n", "n", "nzzzv", { desc = "Next search occurence" })
map("n", "N", "Nzzzv", { desc = "Previous search occurrence" })

-- Move lines up/down
map("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move line up", silent = true })
map("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move line down", silent = true })

-- Better paste
map("v", "p", '"_dP', { desc = "Non-replacing paste", silent = true })

-- Pane navigation (fallback from tmux-navigator)
map("n", "<C-h>", "<C-w>h", { desc = "Pane left" })
map("n", "<C-j>", "<C-w>j", { desc = "Pane down" })
map("n", "<C-k>", "<C-w>k", { desc = "Pane up" })
map("n", "<C-l>", "<C-w>l", { desc = "Pane right" })

-- Pane resizing
map("n", "<S-Right>", "<CMD>vertical resize +2<CR>", { desc = "Increase window width" })
map("n", "<S-Left>", "<CMD>vertical resize -2<CR>", { desc = "Decrease window width" })
map("n", "<S-Up>", "<CMD>resize +2<CR>", { desc = "Increase window height" })
map("n", "<S-Down>", "<CMD>resize -2<CR>", { desc = "Decrease window height" })

-- Tab management
map("n", "<leader>tn", "<cmd>tabnew<cr>", { desc = "Open new tab" })
map("n", "<leader>tc", "<cmd>tabclose<cr>", { desc = "Close current tab" })
map("n", "<leader>tf", "<cmd>tabnew %<cr>", { desc = "Open current buffer in new tab" })
