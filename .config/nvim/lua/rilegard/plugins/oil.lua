return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    {
      "-",
      function()
        require("oil").toggle_float()
      end,
      desc = "Open Directory",
    },
  },
  opts = {
    skip_confirm_for_simple_edits = true,
  },
}
