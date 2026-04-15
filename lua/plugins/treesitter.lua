return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function() 
        -- This check prevents the "module not found" error during first install
        local status, configs = pcall(require, "nvim-treesitter.configs")
        if not status then return end

        configs.setup({
            -- Add languages you need for your projects
            ensure_installed = { "lua", "vim", "vimdoc", "python", "javascript", "typescript" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
        })
    end
}
