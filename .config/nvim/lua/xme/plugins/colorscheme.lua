return {
    {
        "folke/tokyonight.nvim",
        config = function()
            local t = require("tokyonight")
            t.setup({
                style = "night",
                transparent = not vim.g.neovide,
            })
        end
    },
}
