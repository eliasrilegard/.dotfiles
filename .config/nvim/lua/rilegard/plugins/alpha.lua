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
      dashboard.button("n", "  > Browse files", "<CMD>NvimTreeToggle<CR>"),
      dashboard.button("f", "󰱼  > Find file", "<CMD>Telescope find_files<CR>"),
      dashboard.button("r", "  > Recent files", "<CMD>Telescope oldfiles<CR>"),
      dashboard.button("s", "󱎸  > Find string", "<CMD>Telescope live_grep<CR>"),
      dashboard.button("l", "󰒲  > Lazy", "<CMD>Lazy<CR>"),
      dashboard.button("m", "󱌣  > Mason", "<CMD>Mason<CR>"),
      dashboard.button("q", "  > Quit", "<CMD>qa<CR>"),
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
