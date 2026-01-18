key = vim.keymap.set


--[[ NORMAL MODE ]]

key("n", "<leader>q", "<cmd>q<cr>")
key("n", "<leader><C-q>", "<cmd>q!<cr>")

key("n", "<leader>w", "<cmd>w<cr>")
key("n", "<leader>W", "<cmd>wq<cr>")

key("n", "<leader>k", "ddkP")
key("n", "<leader>j", "ddp")

key("n", "n", "nzzzv")
key("n", "N", "Nzzzv")

-- key("n", "<C-d>", "<C-d>zz")
-- key("n", "<C-u>", "<C-u>zz")

-- close and delete from buffer list
-- key("n", "<leader>bb", "<cmd>bd<cr>")
key("n", "<leader><bs>", "<cmd>bd<cr>")

-- rename word
key("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gIc<Left><Left><Left><Left>]])

-- resize window
key("n", "<C-Left>", [[<cmd>vertical resize +5<cr>]])
key("n", "<C-Right>", [[<cmd>vertical resize -5<cr>]])
key("n", "<C-Up>", [[<cmd>horizontal resize -2<cr>]])
key("n", "<C-Down>", [[<cmd>horizontal resize +2<cr>]])

-- key("n", "<leader>ff", vim.lsp.buf.format)
-- key("n", "x", '"_x"', { noremap = true, silent = true })


--[[ INSERT MODE ]]

-- exit insert mode, cursor not moving back
-- key("i", "jk", "<Esc><right>", { noremap = true, silent = true })


--[[ VISUAL MODE ]]

key("v", "p", '"_dP')
key("v", "<", "<gv")
key("v", ">", ">gv")
key("v", "<leader>j", ":m '>+1<CR>gv=gv")
key("v", "<leader>k", ":m '<-2<CR>gv=gv")

--[[ CMDLINE MODE ]]

key("c", "<C-f>", "<right>")
key("c", "<C-b>", "<left>")

--[[ TERMINAL ]]

key("t", "<Esc><Esc>", "<C-\\><C-n>")
key("t", "<leader>q", "<C-\\><C-n>:q<cr>")


key("x", "p", "\"_dP")
-- key({"n", "v" }, "<leader>sc", "1z=")
key({"n", "v" }, "<leader><cr>", "1z=")

function ToggleStatusLine()
    vim.opt.ls = vim.opt.ls:get() == 0 and 2 or 0
    vim.cmd("redrawstatus")
end
key("n", "<leader>ts", ToggleStatusLine)

-- TODO
-- whats best binds for Tab, BS, CR?
-- maybe add
