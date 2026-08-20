-- Better syntax highlighting and indentation
vim.schedule(function()
  vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

  vim.api.nvim_create_autocmd("FileType", {
    callback = function()
      -- Enable highlighting
      local ok = pcall(vim.treesitter.start)
      if not ok then
        return
      end

      -- Indentation
      vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
  })

  local ensure_installed = {
    "lua",
    "rust",
    "python",
  }
  local already_installed = require("nvim-treesitter.config").get_installed()
  local to_install = vim.iter(ensure_installed)
    :filter(function(lang)
      return not vim.tbl_contains(already_installed, lang)
    end)
    :totable()

    require("nvim-treesitter").install(to_install)
end)
