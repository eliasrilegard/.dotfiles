return {
  "nvim-treesitter/nvim-treesitter",
  event = "BufReadPost",
  build = ":TSUpdate",
  main = "nvim-treesitter.configs",
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
      "lua",
      "python",
      "rust",
    },
    sync_install = false,
  },
}
