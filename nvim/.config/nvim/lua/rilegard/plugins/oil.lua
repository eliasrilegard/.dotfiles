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
    view_options = {
      show_hidden = true,
      is_always_hidden = function(name, _bufnr) return name == ".." end,
    }
  },
}
