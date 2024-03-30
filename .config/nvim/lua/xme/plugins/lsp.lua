--- @type vim.Version
local version = vim.version()
local diagnostics = require("xme.config.lsp.diagnostics")

return {
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		},
		config = function(_, opts)
			local lsp_zero = require("lsp-zero")

			--- @param client vim.lsp.Client
			lsp_zero.on_attach(function(client, bufnr)
                if version.minor >= 10 and client.supports_method("textDocument/inlayHint") then
                    vim.lsp.inlay_hint.enable(bufnr, true)
				end

				require("xme.config.lsp.keymaps")(client, bufnr)
			end)

			vim.diagnostic.config(diagnostics.on)

			local servers = opts.servers or {}
			for server, config in pairs(servers) do
				lsp_zero.configure(server, config)
			end

			require("mason").setup({})
			require("mason-lspconfig").setup({
				ensure_installed = {
                    "lua_ls",
                },
				handlers = {
					lsp_zero.default_setup,
				},
			})
		end,
	},
}

