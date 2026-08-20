-- Color scheme
vim.pack.add({ "https://github.com/rebelot/kanagawa.nvim" })

require("kanagawa").setup({
  commentStyle = { italic = false },
  keywordStyle = { italic = false },
  statementStyle = { bold = false },
  colors = {
    theme = {
      all = {
        ui = { bg_gutter = "none" },
      },
    },
  },
  overrides = function()
    return {
      Boolean = { bold = false },
      ["@variable.builtin"] = { italic = false },
    }
  end,
})

vim.cmd.colorscheme("kanagawa-wave")
