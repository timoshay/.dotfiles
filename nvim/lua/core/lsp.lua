-- vim.api.nvim_create_autocmd('LspAttach', {
--     callback = function(args)
--         local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
--     end
-- })

vim.lsp.enable({
    "bashls",
    "html",
    "cssls",
    "ts_ls",
    -- "phpactor",
    "intelephense",

})

vim.keymap.set("n", "<leader>bf", vim.lsp.buf.format)

-- These GLOBAL keymaps are created unconditionally when Nvim starts:
-- - "grn" is mapped in Normal mode to |vim.lsp.buf.rename()|
-- - "gra" is mapped in Normal and Visual mode to |vim.lsp.buf.code_action()|
-- - "grr" is mapped in Normal mode to |vim.lsp.buf.references()|
-- - "gri" is mapped in Normal mode to |vim.lsp.buf.implementation()|
-- - "grt" is mapped in Normal mode to |vim.lsp.buf.type_definition()|
-- - "gO" is mapped in Normal mode to |vim.lsp.buf.document_symbol()|
-- - CTRL-S is mapped in Insert mode to |vim.lsp.buf.signature_help()|

-- vim.diagnostic.config({ virtual_text = true })
-- vim.diagnostic.config({ virtual_lines = { current_line = true } })
