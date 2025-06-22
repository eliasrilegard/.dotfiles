return {
  "nvim-tree/nvim-tree.lua",
  event = "VeryLazy",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "<C-n>", "<cmd>NvimTreeToggle<cr>", desc = "Toggle file explorer" },
    { "<leader>nn", "<cmd>NvimTreeToggle<cr>", desc = "Toggle file explorer" },
    { "<leader>nf", "<cmd>NvimTreeFindFileToggle<cr>", desc = "Toggle file explorer on current file" },
    { "<leader>nc", "<cmd>NvimTreeCollapse<cr>", desc = "Collapse all folders" },
    { "<leader>nr", "<cmd>NvimTreeRefresh<cr>", desc = "Refresh file explorer" },
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup({
      view = {
        side = "right",
        width = 35,
      },
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },
    })
  end,
}
