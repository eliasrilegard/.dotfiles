vim.diagnostic.config({
  -- Native lsp_lines
  virtual_lines = true,
  severity_sort = true,

  -- Set custom diagnostic signs
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.INFO] = "󰠠 ",
      [vim.diagnostic.severity.HINT] = " ",
    },
  },

  -- Rounded border when triggering `open_float`
  float = { border = "rounded" },
})

-- Toggle virtual lines
vim.keymap.set(
  "n",
  "<leader>l",
  function()
    vim.diagnostic.config({
      virtual_lines = not vim.diagnostic.config().virtual_lines,
    })
  end,
  { desc = "Toggle LSP lines" }
)

vim.api.nvim_create_autocmd("LspAttach", {
  -- group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    -- Buffer local mappings
    -- See `:h vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf, silent = true }

    opts.desc = "Hover action"
    vim.keymap.set("n", "K", function()
      vim.lsp.buf.hover({ border = "rounded" })
    end, opts)

    opts.desc = "Show LSP definitions"
    vim.keymap.set("n", "<leader>gd", "<cmd>Telescope lsp_definitions<cr>", opts)

    opts.desc = "Go to declaration"
    vim.keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, opts)

    opts.desc = "Go to references"
    vim.keymap.set("n", "<leader>gr", "<cmd>Telescope lsp_references<cr>", opts)

    opts.desc = "Code actions"
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

    opts.desc = "Rename variable"
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

    opts.desc = "Restart LSP"
    vim.keymap.set("n", "<leader>rs", "<cmd>LspRestart<cr>", opts)

    opts.desc = "Show errors"
    vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
  end,
})
