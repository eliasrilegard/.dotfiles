return {
  "zbirenbaum/copilot.lua",
  event = "BufReadPost",
  opts = {
    suggestion = {
      auto_trigger = true,
      keymap = {
        accept = false,
        accept_word = false,
        accept_line = false,
        next = "<C-n>",
        prev = "<C-p>",
        dismiss = "<C-h>",
      },
    },
  },
  keys = {
    { "<leader>ct", "<cmd>Copilot toggle<cr>", desc = "Toggle Copilot" },
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

    -- https://github.com/zbirenbaum/copilot.lua/issues/91
    local suggestion = require("copilot.suggestion")
    vim.keymap.set("i", "<Tab>", function ()
      if suggestion.is_visible() then
        suggestion.accept()
      else
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
      end
    end)
    require("copilot").setup(opts)
  end,
}
