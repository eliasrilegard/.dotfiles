-- Status line
vim.pack.add({
  "https://github.com/nvim-lualine/lualine.nvim",
  "https://github.com/nvim-mini/mini.icons",
  "https://github.com/AndreM222/copilot-lualine",
})

-- require("mini.icons").setup()

require("lualine").setup({
  options = {
    theme = "auto",
    component_separators = "",
    section_separators = { left = "", right = "" },
  },
  sections = {
    lualine_c = {
      {
        "filename",
        path = 1,
      },
    },
    lualine_x = {
      {
        "copilot",
        show_colors = true,
        show_loading = false,
        symbols = {
          status = {
            icons = {
              warning = "",
              unknown = "",
            },
            hl = {
              enabled = "#98bb6c",
            },
          },
        },
      },
      "filetype",
    },
  },
})
