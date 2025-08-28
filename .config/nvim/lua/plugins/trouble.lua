return {
  "folke/trouble.nvim",
  opts = {
    modes = {
      diag = {
        mode = "diagnostics",
        auto_open = false,
        auto_close = true,
      },
    },
  },
  cmd = "Trouble",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    {
      "<leader>tt",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "trouble diagnostics",
    },
    -- {
    --   "<leader>tT",
    --   "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
    --   desc = "buffer diagnostics",
    -- },
    {
      "<leader>ts",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "symbols",
    },
  },
}
