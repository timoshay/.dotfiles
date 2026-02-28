--[[ :h 'statusline'
This is default statusline value:

```lua
vim.o.statusline = "%f %h%w%m%r%=%-14.(%l,%c%V%) %P"
```

below is simple example of custom statusline using neovim APIs

See `:h 'statusline'` for more information about statusline.
]]

---Show attached LSP clients in `[name1, name2]` format.
---Long server names will be modified. For example, `lua-language-server` will be shorten to `lua-ls`
---Returns an empty string if there aren't any attached LSP clients.
---@return string
-- local function lsp_status()
--     local attached_clients = vim.lsp.get_clients({ bufnr = 0 })
--     if #attached_clients == 0 then
--         return ""
--     end
--     local names = vim.iter(attached_clients)
--         :map(function(client)
--             local name = client.name:gsub("language.server", "ls")
--             return name
--         end)
--         :totable()
--     return  table.concat(names, ", ")
-- end
--
-- function _G.statusline()
--     return table.concat({
--         "%f",
--         "%h%w%m%r",
--         "%=",
--         lsp_status(),
--         "%l:%c",
--     }, " ")
-- end
--
-- vim.o.statusline = "%{%v:lua._G.statusline()%}"



-- _G.lsp_diagnostics = function()
--     local clients = vim.lsp.get_clients({ bufnr = vim.api.nvim_get_current_buf() })
--     if #clients == 0 then
--         return " " -- no diagnostics to show if no lsp is attached
--     end
--
--     local bufnr = vim.api.nvim_get_current_buf()
--     local error_count = #vim.diagnostic.get(bufnr, { severity = vim.diagnostic.severity.ERROR })
--     local warn_count = #vim.diagnostic.get(bufnr, { severity = vim.diagnostic.severity.WARN })
--     local info_count = #vim.diagnostic.get(bufnr, { severity = vim.diagnostic.severity.INFO })
--     local hint_count = #vim.diagnostic.get(bufnr, { severity = vim.diagnostic.severity.HINT })
--
--     return string.format("E:%d W:%d I:%d H:%d", error_count, warn_count, info_count, hint_count)
-- end
--
-- vim.opt.statusline = " %t %m %r %h%w %{v:lua.lsp_diagnostics()} %=  %l:%c "
-- vim.o.statusline = " %t %h%w%m%r%=%l:%c "
vim.o.statusline = " %t %h%w%m%r"
