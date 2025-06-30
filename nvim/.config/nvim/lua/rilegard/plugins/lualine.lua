return {
  "nvim-lualine/lualine.nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")

    lualine.setup({
      options = {
        theme = "auto",
        component_separators = "",
        section_separators = { left = "", right = "" },
        disabled_filetypes = { "NvimTree" },
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
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          "filetype",
        },
      },
    })
  end,
}
