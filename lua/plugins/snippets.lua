return {
        {
                "L3MON4D3/LuaSnip",
                -- follow latest release.
                version = "v2.*", 
                -- install jsregexp (optional!).
                build = "make install_jsregexp",
                dependencies = { "rafamadriz/friendly-snippets" },
                config = function()
                        local luasnip = require("luasnip")

                        -- This loads all the snippets from the friendly-snippets library
                        -- (HTML, CSS, React, JS, TS, Python, etc.)
                        require("luasnip.loaders.from_vscode").lazy_load()

                        -- Specifically enable React snippets for .jsx and .tsx files
                        luasnip.filetype_extend("javascriptreact", { "javascript" })
                        luasnip.filetype_extend("typescriptreact", { "typescript" })
                end,
        },
}
