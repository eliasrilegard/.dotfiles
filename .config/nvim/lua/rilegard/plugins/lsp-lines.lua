return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  event = "LspAttach",
  config = function()
    local lsp_lines = require("lsp_lines")
    lsp_lines.setup()

    -- Optional toggle for lsp_lines
    vim.keymap.set("n", "<leader>l", lsp_lines.toggle, { desc = "Toggle LSP lines" })

    vim.diagnostic.config({
      -- Disable virtual_text since it's redundant
      virtual_lines = true,
      virtual_text = false,
    })
  end,
}
