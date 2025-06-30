return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    dashboard.opts.opts.noautocmd = true

    dashboard.section.header.val = {
      "                                                                     ",
      "       ████ ██████           █████      ██                     ",
      "      ███████████             █████                             ",
      "      █████████ ███████████████████ ███   ███████████   ",
      "     █████████  ███    █████████████ █████ ██████████████   ",
      "    █████████ ██████████ █████████ █████ █████ ████ █████   ",
      "  ███████████ ███    ███ █████████ █████ █████ ████ █████  ",
      " ██████  █████████████████████ ████ █████ █████ ████ ██████ ",
    }

    dashboard.section.buttons.val = {
      dashboard.button("n", "  > Browse files", "<cmd>NvimTreeToggle<cr>"),
      dashboard.button("f", "󰱼  > Find file", "<cmd>Telescope find_files<cr>"),
      dashboard.button("r", "  > Recent files", "<cmd>Telescope oldfiles<cr>"),
      dashboard.button("s", "󱎸  > Find string", "<cmd>Telescope live_grep<cr>"),
      dashboard.button("l", "󰒲  > Lazy", "<cmd>Lazy<cr>"),
      dashboard.button("m", "󱌣  > Mason", "<cmd>Mason<cr>"),
      dashboard.button("q", "  > Quit", "<cmd>qa<cr>"),
    }

    dashboard.section.footer.val = ""

    dashboard.config.layout = {
      { type = "padding", val = 10 },
      dashboard.section.header,
      { type = "padding", val = 4 },
      dashboard.section.buttons,
      { type = "padding", val = 2 },
      dashboard.section.footer,
      { type = "padding", val = 6 },
    }

    vim.api.nvim_create_autocmd("User", {
      callback = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime * 100) / 100
        dashboard.section.footer.val = "󱐌 Loaded "
          .. stats.loaded
          .. "/"
          .. stats.count
          .. " plugins in "
          .. ms
          .. "ms"
        pcall(vim.cmd.AlphaRedraw)
      end,
    })

    alpha.setup(dashboard.opts)
  end,
}
