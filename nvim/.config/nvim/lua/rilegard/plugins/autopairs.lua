-- Auto-closing brackets
vim.schedule(function()
  vim.pack.add({ "https://github.com/windwp/nvim-autopairs" })

  require("nvim-autopairs").setup({
    check_ts = true,
    ts_config = {
      lua = { "string" },
    },
  })
end)
