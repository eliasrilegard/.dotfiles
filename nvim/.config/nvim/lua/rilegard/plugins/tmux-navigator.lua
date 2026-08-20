-- Tmux integration
vim.schedule(function()
  vim.pack.add({ "https://github.com/christoomey/vim-tmux-navigator" })

  vim.g.tmux_navigator_no_mappings = 1

  local map = vim.keymap.set
  map("n", "<C-h>", "<CMD>TmuxNavigateLeft<CR>", { desc = "Navigate left" })
  map("n", "<C-j>", "<CMD>TmuxNavigateDown<CR>", { desc = "Navigate down" })
  map("n", "<C-k>", "<CMD>TmuxNavigateUp<CR>", { desc = "Navigate up" })
  map("n", "<C-l>", "<CMD>TmuxNavigateRight<CR>", { desc = "Navigate right" })
end)
