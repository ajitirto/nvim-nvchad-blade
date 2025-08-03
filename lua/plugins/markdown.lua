return {
  {
    "toppair/peek.nvim",
    build = "deno task --quiet build:fast",
    ft = { "markdown" },
    keys = {
      { "<leader>mp", function() require("peek").open() end, desc = "Open Markdown Preview" },
      { "<leader>mc", function() require("peek").close() end, desc = "Close Markdown Preview" },
    },
    opts = {
      theme = "dark",
      app = "browser",
    },
  },
}
