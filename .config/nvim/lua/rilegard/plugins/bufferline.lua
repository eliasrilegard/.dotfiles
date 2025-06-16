return {
  "akinsho/bufferline.nvim",
  event = "BufReadPost",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  config = function()
    local bufferline = require("bufferline")
    bufferline.setup({
      options = {
        always_show_bufferline = false,
        mode = "tabs",
        separator_style = "slant",
        style_preset = bufferline.style_preset.no_italic,
      },
    })
  end,
}
