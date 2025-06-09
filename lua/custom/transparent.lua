
local M = {}

M.plugins = {
  -- Adding the nvim-transparent plugin
  {
    "xiyaowong/nvim-transparent",
    config = function()
      require("transparent").setup({
        enable = true,
        extra_groups = { -- extra groups to make transparent
          "Normal", "NormalNC", "TelescopeNormal", "TelescopeBorder"
        },
        exclude = {}, -- exclude specific groups from transparency
      })
    end,
  },
}

return M
