return {
  "stevearc/oil.nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    {
      "-",
      function()
        require("oil").toggle_float()
      end,
      desc = "Open directory",
    },
  },
  opts = {
    skip_confirm_for_simple_edits = true,
  },
}
