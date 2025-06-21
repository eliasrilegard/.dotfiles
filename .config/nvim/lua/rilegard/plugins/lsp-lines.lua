return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  event = "LspAttach",
  config = function()
    local lsp_lines = require("lsp_lines")
    lsp_lines.setup()

    vim.keymap.set(
      "n",
      "<leader>l",
      function()
        if vim.diagnostic.config().virtual_lines then
          vim.diagnostic.config({ virtual_lines = false })
        else
          vim.diagnostic.config({
            virtual_lines = { highlight_whole_line = false },
          })
        end
      end,
      { desc = "Toggle LSP lines" }
    )

    vim.diagnostic.config({
      virtual_lines = { highlight_whole_line = false },
    })
  end,
}
