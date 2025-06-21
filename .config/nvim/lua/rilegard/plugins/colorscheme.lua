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
        name = "Kanagawa",
        colorscheme = "kanagawa-wave",
      },
    },
    livePreview = true,
  },
  dependencies = {
    {
      "AlexvZyl/nordic.nvim",
      opts = {
        on_highlight = function(highlights, _palette)
          for _, highlight in pairs(highlights) do
            highlight.italic = false
          end
        end,
      },
    },
    {
      "rebelot/kanagawa.nvim",
      opts = {
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
          }
        end,
      },
    },
  }
}
