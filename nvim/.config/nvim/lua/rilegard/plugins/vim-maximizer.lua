-- Split maximization
vim.schedule(function()
  vim.pack.add({ "https://github.com/szw/vim-maximizer" })
  vim.keymap.set("n", "<leader>z", "<CMD>MaximizerToggle<CR>", { desc = "Maximize a split" })
end)
