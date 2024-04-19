---@diagnostic disable: missing-fields
return {
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        opts = {
            servers = {
                --- @type vim.lsp.ClientConfig
                tailwindcss = {}
            },
        },
    },
    {
        "NvChad/nvim-colorizer.lua",
        opts = {
            user_default_options = {
                tailwind = true,
            },
        },
    },
    {
        "roobert/tailwindcss-colorizer-cmp.nvim",
        config = true,
    }
}
