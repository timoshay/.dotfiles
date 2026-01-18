MiniDeps.later(
    function()
        require("mini.completion").setup({
            delay = { completion = 10^7, info = 100, signature = 10^7 },
    window = {
        completion = { width = 30, border = "double" },
        info = { height = 25, width = 80, border = "none" },
        signature = { height = 25, width = 80, border = "none" },
    },
            lsp_completion = { source_func = "omnifunc", auto_setup = false },
            mappings = {
                force_fallback = "",
                -- force_twostep = '<C-Space>',
                -- force_fallback = '<A-Space>',
            },
        })
        local on_attach = function(args)
            vim.bo[args.buf].omnifunc = "v:lua.MiniCompletion.completefunc_lsp"
        end
        vim.api.nvim_create_autocmd('LspAttach', { callback = on_attach })


        vim.lsp.config('*', {capabilities = MiniCompletion.get_lsp_capabilities()})
    end)
