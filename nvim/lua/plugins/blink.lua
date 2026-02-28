return {
    "saghen/blink.cmp",
        version = "1.*",
        event = "InsertEnter",
        dependencies = {
            "L3MON4D3/LuaSnip",
            dependencies = { "rafamadriz/friendly-snippets", },
            config = function()
                require('luasnip.loaders.from_vscode').lazy_load()
            end,
        },
        opts = {
        snippets = { preset = "luasnip" },
        cmdline = { enabled = false },
        signature = {
            enabled = false,
            window = { border = "single" },
        },
        fuzzy = { implementation = "prefer_rust" },
        sources = {
        default = { "lsp", "snippets", "buffer", "path" },
    },
        completion = {
            menu = {
                auto_show = false,
            },
            ghost_text = { enabled = false },
        documentation = {
        auto_show = false,
        window = { border = "single" },
        },
        },
        keymap = {
            preset = "none",
            ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
            ['<CR>'] = { 'select_and_accept', 'fallback' },
            ['<C-y>'] = { 'select_and_accept', 'fallback' },
            ['<C-e>'] = { 'hide', 'fallback' },

            ['<C-p>'] = { 'select_prev', 'fallback_to_mappings' },
            ['<C-n>'] = { 'select_next', 'show' },

            ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
            ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },

            ['<Tab>'] = { 'snippet_forward', 'fallback' },
            ['<S-Tab>'] = { 'snippet_backward', 'fallback' },

            ['<C-k>'] = { 'snippet_forward', 'fallback' },
            ['<C-j>'] = { 'snippet_backward', 'fallback' },
        },
    },
        opts_extend = { 'sources.default' },
}
