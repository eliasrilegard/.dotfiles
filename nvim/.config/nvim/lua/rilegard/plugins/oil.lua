-- File explorer
vim.pack.add({
  "https://github.com/stevearc/oil.nvim",
  "https://github.com/nvim-mini/mini.icons",
})

require("mini.icons").setup()

local oil = require("oil")
oil.setup({
  skip_confirm_for_simple_edits = true,
  view_options = {
    show_hidden = true,
    is_always_hidden = function(name) return name == ".." end,
  },
})

vim.keymap.set("n", "-", oil.toggle_float, { desc = "Open directory" })
