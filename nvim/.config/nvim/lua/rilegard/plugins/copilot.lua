-- GitHub Copilot
vim.schedule(function()
  vim.pack.add({ "https://github.com/zbirenbaum/copilot.lua" })

  require("copilot").setup({
    suggestion = {
      auto_trigger = true,
      keymap = {
        accept = false,
        next = "<C-n>",
        prev = "<C-p>",
        dismiss = "<C-h>",
      },
    },
  })

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

  -- Set <Tab> to accept suggestion if visible, else fallback to normal
  -- https://github.com/zbirenbaum/copilot.lua/issues/91
  local suggestion = require("copilot.suggestion")
  vim.keymap.set("i", "<Tab>", function ()
    if suggestion.is_visible() then
      suggestion.accept()
    else
      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
    end
  end)

  vim.keymap.set("n", "<leader>ct", "<CMD>Copilot toggle<CR>", { desc = "Toggle Copilot", silent = true })
end)
