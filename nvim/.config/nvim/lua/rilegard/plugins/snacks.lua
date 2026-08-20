-- Swiss army knife
vim.schedule(function()
  vim.pack.add({
    "https://github.com/nvim-mini/mini.icons",
    "https://github.com/folke/snacks.nvim",
  })

  local Snacks = require("snacks")
  Snacks.setup({
    input = { enable = true },
    keymap = { enable = true },
    notifier = { enable = true },
    picker = {
      sources = {
        files = { hidden = true },
        grep = { hidden = true },
      },
    },
  })

  local map = Snacks.keymap.set

  -- LSP bindings
  map("n", "gd", function() Snacks.picker.lsp_definitions() end, { desc = "Go to definition" })
  map("n", "gD", function() Snacks.picker.lsp_declarations() end, { desc = "Go to declaration" })
  map("n", "gr", function() Snacks.picker.lsp_references() end, { desc = "Go to references", nowait = true })

  -- Telescope bindings
  map("n", "<leader>ff", function() Snacks.picker.files() end, { desc = "Find files" })
  map("n", "<leader>fr", function() Snacks.picker.recent() end, { desc = "Find recent files" })
  map("n", "<leader>fs", function() Snacks.picker.grep() end, { desc = "Find string by grep" })
  map({ "n", "x" }, "<leader>fw", function() Snacks.picker.grep_word() end, { desc = "Find string under cursor" })
end)
