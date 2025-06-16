return {
  "saghen/blink.cmp",
  event = "InsertEnter",
  dependencies = {
    "rafamadriz/friendly-snippets",
    "onsails/lspkind.nvim",
  },
  version = "1.*",
  opts = {
    appearance = { -- Fix for until nordic.nvim adds support for blink
      use_nvim_cmp_as_default = true,
    },
    completion = {
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 200,
        treesitter_highlighting = true,
        window = {
          max_width = 100,
          max_height = 24,
          border = "rounded",
        },
      },

      list = {
        selection = {
          preselect = false,
        },
      },

      menu = {
        border = "rounded",
        max_height = 12,
        draw = {
          treesitter = { "lsp" },
          columns = {
            { "kind_icon", "label", gap = 1 },
            { "kind" },
          },
          components = {
            kind_icon = {
              text = function(item)
                local icon = require("lspkind").symbol_map[item.kind] or item.kind_icon
                return icon .. " "
              end,
            },
            label = {
              width = { fill = true, max = 50 },
              text = function(item)
                return item.label .. item.label_detail
              end,
            },
          },
        },
      },
    },

    keymap = {
      ["<C-j>"] = { "select_next", "fallback" },
      ["<C-k>"] = { "select_prev", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
    },

    sources = {
      default = { "lsp", "snippets", "buffer", "path" },
      providers = {
        lsp = {
          min_keyword_length = 0, -- Number of characters to trigger provider
          score_offset = 0, -- Boost/penalize the score of the items
        },
        path = {
          min_keyword_length = 0,
        },
        snippets = {
          min_keyword_length = 2,
        },
        buffer = {
          min_keyword_length = 5,
          max_items = 5,
        },
      },
    },

    signature = {
      enabled = true,
      window = { border = "rounded" },
    },
  },
  opts_extend = { "sources.default" },
}
