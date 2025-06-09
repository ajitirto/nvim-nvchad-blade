-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 


-- relativenumber for use haha hehe
vim.opt.number = true
vim.opt.relativenumber = true

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })



---@type ChadrcConfig
local M = {}


M.base46 = {
	theme = "chadracula-evondev",
  transparency = true,
  statusline = {
    theme = "default"
  }
}


-- Plugin Configuration
-- M.plugins = {
--   -- Menambahkan plugin Null-LS
--   ["jose-elias-alvarez/null-ls.nvim"] = {
--     after = "nvim-lspconfig",  -- Menyusun agar null-ls dimuat setelah nvim-lspconfig
--     config = function()
--       local null_ls = require("null-ls")
--       null_ls.setup({
--         sources = {
--           -- Menambahkan blade-formatter untuk format file Blade
--           null_ls.builtins.formatting.blade_formatter,
--         },
--       })
--     end,
--   },
-- }

-- blade sytax

-- In your lua/chadrc.lua or lua/custom/init.lua

-- Add filetype detection for Blade files
vim.filetype.add({
  pattern = {
    ['.*%.blade%.php'] = 'blade',
  },
})

-- Rest of your NvChad configuration...


return M


