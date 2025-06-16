return {
  {
    "AlexvZyl/nordic.nvim",
    priority = 1000,
    opts = {
      on_highlight = function(highlights, _palette)
        for _, highlight in pairs(highlights) do
          highlight.italic = false
        end
      end,
    },
  },
  {
    "tomasiser/vim-code-dark",
    priority = 1000,
  },
}
