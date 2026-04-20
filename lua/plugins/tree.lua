return {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" }, -- Adds cool icons for Python/JS
        config = function()
                require("nvim-tree").setup({
                        -- This makes it "selective"
                        filters = {
                                dotfiles = false,      -- Show hidden files (set to true to hide them)
                                custom = { "node_modules", ".cache", ".copilot", ".local", ".npm", ".thumbnails", "Library", "Movies", "Pictures", "Public" }, -- Hide these specific folders
                        },
                        view = {
                                width = 30,           -- Width of the sidebar
                                side = "left",
                        },
                })

                -- Shortcut to open/close the tree (Ctrl + n)
                vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { desc = "Toggle File Tree" })
        end,
}
