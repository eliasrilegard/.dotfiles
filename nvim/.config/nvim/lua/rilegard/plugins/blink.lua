-- Completion menu
vim.schedule(function()
  vim.pack.add({
    "https://github.com/saghen/blink.lib",
    "https://github.com/saghen/blink.cmp",
  })

  local cmp = require("blink.cmp")
  cmp.build():pwait()
  cmp.setup({
    keymap = { preset = "enter" },

    completion = {
      documentation = { auto_show = true },
      list = {
        selection = {
          preselect = false,
          auto_insert = true,
        },
      },
    },

    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
  })
end)
