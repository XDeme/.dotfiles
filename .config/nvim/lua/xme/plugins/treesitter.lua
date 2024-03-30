return {
    {
        "nvim-treesitter/nvim-treesitter",
        version = false,
        build = ":TSUpdate",
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            ensure_installed = {
                -- core
                "lua",
                "vim",
                "bash",
                "markdown",
                "vimdoc",

                -- Web
                "html",
                "css",
                "javascript",
                "typescript",

                -- Others
                "c",
                "cpp",
                "cmake",
                "rust",
                "java",
            },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            }
        },
        config = function(_, opts)
            local t = require("nvim-treesitter.configs")
            t.setup(opts)
        end,
    },

	{
		"HiPhish/rainbow-delimiters.nvim",
		init = function()
			local r = require("rainbow-delimiters")

			vim.g.rainbow_delimiters = {
				strategy = {
					[""] = r.strategy["global"],
					vim = r.strategy["local"],
				},
				query = {
					[""] = "rainbow-delimiters",
					lua = "rainbow-blocks",
					tsx = "rainbow-parens",
					javascript = "rainbow-delimiters-react",
				},
				highlight = {
					"RainbowDelimiterRed",
					"RainbowDelimiterYellow",
					"RainbowDelimiterBlue",
					"RainbowDelimiterViolet",
					"RainbowDelimiterCyan",
				},
			}
		end,
	},

}
