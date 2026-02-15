return {
  "zbirenbaum/copilot.lua",
  event = "BufReadPost",
  opts = {
    suggestion = {
      auto_trigger = true,
      keymap = {
        accept = "<C-l>",
        accept_word = false,
        accept_line = false,
        next = "<C-j>",
        prev = "<C-k>",
        dismiss = "<C-h>",
      },
    },
  },
  config = function(_, opts)
    -- Hide Copilot suggestions when completion menu is open
    vim.api.nvim_create_autocmd("User", {
      pattern = "BlinkCmpMenuOpen",
      callback = function()
        vim.b.copilot_suggestion_hidden = true
      end,
    })
    vim.api.nvim_create_autocmd("User", {
      pattern = "BlinkCmpMenuClose",
      callback = function()
        vim.b.copilot_suggestion_hidden = false
      end,
    })

    vim.keymap.set({ "n", "i" }, "<C-CR>", "<cmd>Copilot toggle<cr>", { desc = "Toggle Copilot" })
    require("copilot").setup(opts)
  end,
}
