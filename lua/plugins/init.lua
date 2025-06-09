return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
  
  {
    "nvim-treesitter/nvim-treesitter",
    event = "BufReadPost",
    build = ":TSUpdate",
    opts = function(_, opts)
      opts.highlight = {
        enable = true,
      }
      opts.indent = {
        enable = true,
      }
      -- Pastikan 'blade' ada di daftar ensure_installed
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "blade")

      -- Ini adalah bagian KRUSIAL yang harus ditambahkan!
      -- Beri tahu nvim-treesitter di mana menemukan parser 'blade'.
      opts.custom_parsers = {
        blade = {
          install_info = {
            url = "https://github.com/EmranMR/tree-sitter-blade", -- URL repositori parser
            files = {"src/parser.c", "src/scanner.c"}, -- Lokasi file parser di repo
            -- Opsional: branch = "main", -- Jika repo menggunakan branch selain 'main'
          },
          -- Opsional: additional_languages = {"php", "html"}, -- Jika parser blade juga menginjeksi ini
        },
      }

    end,
    -- Ini akan memaksa instalasi 'blade' saat NvChad dimuat ulang
    config = function(_, opts)
      require('nvim-treesitter.configs').setup(opts)
      -- Jalankan instalasi parser blade secara eksplisit
      -- vim.cmd("TSInstall blade")
      -- Coba juga TSUpdate, kadang dibutuhkan untuk registrasi parser baru
      -- vim.cmd("TSUpdate")
    end,
  },



}
