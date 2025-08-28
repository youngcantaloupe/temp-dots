return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      { "BurntSushi/ripgrep" },
    },

    config = function()
      local builtin = require("telescope.builtin")
      require("telescope").setup({
        pickers = {
          find_files = { theme = "dropdown" },
          live_grep = { theme = "dropdown" },
          extensions = {
            fzf = {},
          },
        },
        -- File search keybinds
        -- :Telescope live_grep search_dirs=.
        vim.keymap.set("n", "<space>ff", builtin.find_files),
        vim.keymap.set("n", "<space>fh", builtin.help_tags),
        vim.keymap.set("n", "<space>fc", function()
          builtin.find_files({
            cwd = vim.fn.stdpath("config"),
          })
        end),

        vim.keymap.set("n", "<space>fn", function()
          builtin.find_files({
            cwd = vim.fn.expand("~/Notes"),
          })
        end),

        -- vim.keymap.set("n", "<space>fp", function()
        --   builtin.find_files({
        --     cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy"),
        --   })
        -- end),

        -- Grep search keybinds
      })
      require("config.telescope.multigrep").setup()
    end,
  },
}
