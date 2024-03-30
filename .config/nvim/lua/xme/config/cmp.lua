---@diagnostic disable: missing-fields
local cmp = require("cmp")
local icons = require("xme.icons")

cmp.setup({
    preselect = "item",
    completion = { completeopt = "menu,menuone,noinsert" },
    --- @type cmp.SourceConfig[]
    sources = {
        { name = "nvim_lsp",               priority = 4 },
        { name = "luasnip",                priority = 3, max_item_count = 20 },
        { name = "path",                   priority = 2, max_item_count = 10 },
        { name = "buffer",                 priority = 1, max_item_count = 4 },
        { name = "nvim_lsp_signature_help" },
    },
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.confirm({ select = true })
            elseif require("luasnip").expand_or_jumpable() then
                require("luasnip").expand_or_jump()
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<Esc>"] = cmp.mapping(function(fallback)
            require("luasnip").unlink_current()
            fallback()
        end),
    }),
    formatting = {
        fields = { "kind", "abbr" },
        format = function(entry, item)
            item.menu = ({
                nvim_lsp = item.kind,
                luasnip = "Snippet",
                buffer = "Text",
                path = "Path",
            })[entry.source.name]
            if icons.kind[item.kind] then
                item.kind = icons.kind[item.kind]
            end
            return item
        end,
    },
    experimental = { ghost_text = true },
    sorting = require("cmp.config.default")().sorting,
})
