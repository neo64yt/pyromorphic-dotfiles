local overrides = require "custom.plugins.overrides"

return {

    ["neovim/nvim-lspconfig"] ={
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.lspconfig"
        end,
    },

    ["williamboman/mason.nvim"] = {
        override_options = overrides.mason,
    },

    ["nvim-treesitter/nvim-treesitter"] = {
        override_options = overrides.treesitter,
    },

    ["goolord/alpha-nvim"] = {
        disable = false,
        override_options = overrides.alpha,
    },

}
