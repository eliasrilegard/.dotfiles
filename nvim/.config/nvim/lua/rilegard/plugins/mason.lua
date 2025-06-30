return {
  {
    "mason-org/mason.nvim",
    event = "VeryLazy",
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "neovim/nvim-lspconfig",
      "saghen/blink.cmp",
    },
    opts = {},
  },
}
