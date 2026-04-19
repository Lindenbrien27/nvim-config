return {
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
                                ensure_installed = { "pyright", "ts_ls", "html", "cssls" },
                        })
                end,
        },
        {
                "neovim/nvim-lspconfig",
                config = function()
                        -- The NEW way: Use vim.lsp.config directly
                        -- This tells Neovim to launch these servers for you
                        vim.lsp.config("pyright", {})
                        vim.lsp.config("ts_ls", {})
                        vim.lsp.config("html", {})
                        vim.lsp.config("cssls", {})
                end,
        },
}
