return {
  "kylechui/nvim-surround",
  version = "^3.*",
  event = "VeryLazy",
  opts = {
    -- Invert the open/close mappings
    surrounds = {
      ["("] = { add = { "(", ")" } },
      [")"] = { add = { "( ", " )" } },
      ["{"] = { add = { "{", "}" } },
      ["}"] = { add = { "{ ", " }" } },
      ["<"] = { add = { "<", ">" } },
      [">"] = { add = { "< ", " >" } },
      ["["] = { add = { "[", "]" } },
      ["]"] = { add = { "[ ", " ]" } },
    },
  },
}
