local autocmd = vim.api.nvim_create_autocmd

-- RESIZE BUFFERS IF WINDOW GOT RESIZED
vim.api.nvim_command('autocmd VimResized * wincmd =')

-- HIGHLIGHT ON Yank
autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = "*",
})

-- LAST POSITION
autocmd("BufReadPost", {
  pattern = { "*" },
  callback = function()
    if vim.fn.line("'\"") > 1 and vim.fn.line("'\"") <= vim.fn.line("$") then
      vim.api.nvim_exec("normal! g'\"", false)
    end
  end
})

-- DONT SHOW NUMBER IN TERMINAL
autocmd("TermOpen", {
  command = [[setlocal nonumber norelativenumber]]
})

-- REMOVE WHITESPACE ON SAVE
autocmd("BufWritePre", {
  pattern = "",
  command = [[%s/\s\+$//e]]
})

-- DON'T AUTO COMMENTING NEW LINES
autocmd('BufEnter', {
  pattern = '',
  command = 'set fo-=c fo-=r fo-=o'
})

-- CURSOR ALWAYS CENTERED
autocmd({ "CursorMoved", "CursorMovedI", "BufEnter" }, {
  group = vim.api.nvim_create_augroup("ScrollOffEOF", {}),
  callback = function()
    local win_h = vim.api.nvim_win_get_height(0)
    local off = math.min(vim.o.scrolloff, math.floor(win_h / 2))
    local dist = vim.fn.line "$" - vim.fn.line "."
    local rem = vim.fn.line "w$" - vim.fn.line "w0" + 1
    if dist < off and win_h - rem + dist < off then
      local view = vim.fn.winsaveview()
      view.topline = view.topline + off - (win_h - rem + dist)
      vim.fn.winrestview(view)
    end
  end,
})


-- local custom_highlight = vim.api.nvim_create_augroup("CustomHighligh", {})
-- vim.api.nvim_create_autocmd("ColorScheme", {
--     pattern = "moonfly",
--     callback = function()
--         vim.api.nvim_set_hl(0, "CursorLine", { bg = "#ff00ff" })
--     end,
--     group = custom_highlight,
-- })
