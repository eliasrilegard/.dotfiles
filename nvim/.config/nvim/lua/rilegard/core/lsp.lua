vim.diagnostic.config({
  virtual_lines = true, -- Native lsp_lines

  -- Custom diagnostic signs
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.INFO] = "󰠠 ",
      [vim.diagnostic.severity.HINT] = " ",
    },
  },
})

local keymaps = {
  { keys = "K", func = vim.lsp.buf.hover, desc = "Hover", has = "hoverProvider" },
  { keys = "<leader>ca", func = vim.lsp.buf.code_action, desc = "Code actions" },
  { keys = "<leader>rn", func = vim.lsp.buf.rename, desc = "Rename" },
  { keys = "<leader>ce", func = vim.diagnostic.open_float, desc = "Line diagnostics" },
  {
    keys = "<leader>cf",
    func = function()
      vim.lsp.buf.format({ async = true })
      vim.notify("Code formatted", vim.log.levels.INFO, { title = "LSP Formatting" })
    end,
    desc = "Format buffer",
  },
  {
    keys = "<leader>cl",
    func = function()
      local new_config = not vim.diagnostic.config().virtual_lines
      vim.diagnostic.config({ virtual_lines = new_config })
    end,
    desc = "Toggle diagnostic lines",
  },
}

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if not client then
      return
    end

    for _, km in ipairs(keymaps) do
      -- Only bind if the server supports it
      if not km.has or client.server_capabilities[km.has] then
        vim.keymap.set(
          km.mode or "n",
          km.keys,
          km.func,
          { buffer = args.buf, desc = "LSP: " .. km.desc, silent = true }
        )
      end
    end
  end,
})
