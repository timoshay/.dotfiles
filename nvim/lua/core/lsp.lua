vim.lsp.enable({
    "html",
    "cssls",
    "ts_ls",
    -- "intelephense",
    "phpactor",
})

key = vim.keymap.set

-- key("n", "<leader>bf", vim.lsp.buf.format)

key({"n", "i"}, "<C-s>", '<cmd>lua vim.lsp.buf.signature_help({ border = "single"})<cr>')
-- key("i", "<C-k>", '<cmd>lua vim.lsp.buf.signature_help({ border = "single"})<cr>')


key("n", "K", function()
    vim.lsp.buf.hover({
        border = "single",
        -- title = "title",
        -- max_width =  120,
        -- max_heigh = 25,
    })
end
)

vim.diagnostic.config({
    virtual_text = { current_line = true },
    underline = false,
    severity_sort = true,
    float = { border = "single" },
    update_in_insert = false,
    -- signs = false,
})
