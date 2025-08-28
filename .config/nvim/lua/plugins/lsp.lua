return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            {
                -- this gives the lua lsp information about global vim variables
                "folke/lazydev.nvim",
                ft = "lua", -- only load on lua files
                opts = {
                    library = {
                        -- See the configuration section for more details
                        -- Load luvit types when the `vim.uv` word is found
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
            {
                "williamboman/mason.nvim",
                config = function()
                    require("mason").setup()
                end,
            },
            {
                "williamboman/mason-lspconfig.nvim",
                config = function()
                    require("mason-lspconfig").setup({
                        ensure_installed = { "lua_ls", "pyright", "clangd", "gopls" },
                        automatic_installation = true,
                    })
                end,
            },
            { "hrsh7th/cmp-nvim-lsp" },
        },
        config = function()
            local on_attach = function(_, bufnr)
                local buf_map = vim.api.nvim_buf_set_keymap
                local opts = { noremap = true, silent = true }
                buf_map(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
                buf_map(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
                buf_map(bufnr, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
                buf_map(bufnr, "n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
            end

            local capabilities = vim.lsp.protocol.make_client_capabilities()
            local lspconfig = require("lspconfig")
            capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

            lspconfig.lua_ls.setup({ on_attach = on_attach, capabilities = capabilities })
            lspconfig.pyright.setup({ on_attach = on_attach, capabilities = capabilities })
            lspconfig.clangd.setup({ on_attach = on_attach, capabilities = capabilities })
            lspconfig.gopls.setup({ on_attach = on_attach, capabilities = capabilities })
            lspconfig.eslint.setup({ on_attach = on_attach, capabilities = capabilities })
            lspconfig.bashls.setup({ on_attach = on_attach, capabilities = capabilities })
            lspconfig.jsonls.setup({ on_attach = on_attach, capabilities = capabilities })
        end,
    },
}
