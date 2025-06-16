vim.g.mapleader = " "

local keymap = vim.keymap.set

-- Clear search highlight
keymap("n", "<leader>ch", "<cmd>noh<cr>", { desc = "Clear highlight" })

-- Search movement keeps cursor centered
keymap("n", "n", "nzzzv", { desc = "Next search occurence" })
keymap("n", "N", "Nzzzv", { desc = "Previous search occurrence" })

-- Move lines up/down
keymap("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move line up", silent = true })
keymap("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move line down", silent = true })

-- Manipulate numbers
keymap("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- Pane navigation
keymap("n", "<C-k>", "<C-w>k", { desc = "Pane up" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Pane down" })
keymap("n", "<C-h>", "<C-w>h", { desc = "Pane left" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Pane right" })

-- Pane management
keymap("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" })
keymap("n", "<leader>we", "<C-w>=", { desc = "Make windows equal" })
keymap("n", "<leader>wc", "<cmd>close<cr>", { desc = "Close current split" })

-- Pane resizing
keymap("n", "<S-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })
keymap("n", "<S-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
keymap("n", "<S-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
keymap("n", "<S-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })

-- Tab management
keymap("n", "<leader>tn", "<cmd>tabnew<cr>", { desc = "Open new tab" })
keymap("n", "<leader>tc", "<cmd>tabclose<cr>", { desc = "Close current tab" })
keymap("n", "<leader>tf", "<cmd>tabnew %<cr>", { desc = "Open current buffer in new tab" })
keymap("n", "<leader>tg", "gt", { desc = "Go to specific tab" })
keymap("n", "<leader>tl", "<cmd>tabn<cr>", { desc = "Go to next tab" })
keymap("n", "<leader>th", "<cmd>tabp<cr>", { desc = "Go to previous tab" })
