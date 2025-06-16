return {
  "nvim-tree/nvim-tree.lua",
  event = "VeryLazy",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "<C-n>", "<CMD>NvimTreeToggle<CR>", desc = "Toggle File Explorer" },
    { "<leader>nn", "<CMD>NvimTreeToggle<CR>", desc = "Toggle File Explorer" },
    { "<leader>nf", "<CMD>NvimTreeFindFileToggle<CR>", desc = "Toggle File Explorer on Current File" },
    { "<leader>nc", "<CMD>NvimTreeCollapse<CR>", desc = "Collapse All Folders" },
    { "<leader>nr", "<CMD>NvimTreeRefresh<CR>", desc = "Refresh File Explorer" },
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
