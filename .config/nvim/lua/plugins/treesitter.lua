return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "lua", "vim", "java", "cpp", "python", "html", "css", "javascript", "go", "markdown", "markdown_inline" },
            sync_install = false,
            auto_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
