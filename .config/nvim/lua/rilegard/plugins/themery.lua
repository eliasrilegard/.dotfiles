return {
  "zaldih/themery.nvim",
  cmd = "Themery",
  event = "VimEnter",
  keys = {
    { "<leader>T", "<CMD>Themery<CR>", desc = "Switch Theme" },
  },
  opts = {
    themes = {
      {
        name = "Nordic",
        colorscheme = "nordic",
      },
      {
        name = "VSCode",
        colorscheme = "codedark",
      },
    },
    livePreview = true,
  },
}
