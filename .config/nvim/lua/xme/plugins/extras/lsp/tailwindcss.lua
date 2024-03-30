return {
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        opts = {
            servers = {
                --- @type vim.lsp.ClientConfig
                tailwindcss = {
                    on_init = function(client, initialize_result)
                        require("cmp").setup.global({
                            matching = {
                                disallow_fuzzy_matching = true,
                                disallow_prefix_unmatching = true,
                                disallow_partial_matching = true
                            }
                        })
                    end,
                    on_exit = function(code, signal, client_id)
                        require("cmp").setup.global({
                            matching = {
                                disallow_fuzzy_matching = false,
                                disallow_prefix_unmatching = false,
                                disallow_partial_matching = false
                            }
                        })
                    end
                }
            },
        },
    },
}
