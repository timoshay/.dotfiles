key = vim.keymap.set

--[[ NORMAL MODE ]]

key("n", "<leader>q", "<cmd>q<cr>")
key("n", "<leader><C-q>", "<cmd>q!<cr>")

key("n", "<leader>w", "<cmd>w<cr>")
key("n", "<leader>W", "<cmd>wq<cr>")

key("n", "<C-j>", "<cmd>move .+1<cr>==")
key("n", "<C-k>", "<cmd>move .-2<cr>==")
key("x", "<C-j>", "<esc><cmd>'<,'>move '>+1<cr>gv=gv")
key("x", "<C-k>", "<esc><cmd>'<,'>move '<-2<cr>gv=gv")

key("n", "n", "nzzzv")
key("n", "N", "Nzzzv")

key("n", "<C-d>", "<C-d>zz")
key("n", "<C-u>", "<C-u>zz")

-- close and delete from buffer list
key("n", "<leader><bs>", "<cmd>bd<cr>")

key({'n', 'v'}, 'gy', '"+y')
key({'n', 'v'}, 'gp', '"+p')

-- google search, from https://github.com/glepnir/
key('n', '<leader>sw', function()
    vim.ui.open(('https://google.com/search?q=%s'):format(vim.fn.expand('<cword>')))
end)

key('x','<leader>ss', function()
    local lines = vim.fn.getregion(vim.fn.getpos('.'), vim.fn.getpos('v'), { type = vim.fn.mode() })
    vim.ui.open(('https://google.com/search?q=%s'):format(vim.trim(table.concat(lines, ' '))))
    vim.api.nvim_input('<esc>')
end)

key('n', '<space>', '<nop>')

-- rename word
key("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gIc<Left><Left><Left><Left>]])

-- resize window
key("n", "<C-Left>", [[<cmd>vertical resize +5<cr>]])
key("n", "<C-Right>", [[<cmd>vertical resize -5<cr>]])
key("n", "<C-Up>", [[<cmd>horizontal resize -2<cr>]])
key("n", "<C-Down>", [[<cmd>horizontal resize +2<cr>]])

-- toggle wrap
key("n", "<leader>tw", ":set wrap!<cr>", { silent = true })

--[[ INSERT MODE ]]

-- exit insert mode, cursor not moving back
-- key("i", "jk", "<Esc><right>", { noremap = true, silent = true })

-- key("i", "<C-s>", "<esc>1z=ea")

--[[ VISUAL MODE ]]

key("v", "p", '"_dP')
key("v", "<", "<gv")
key("v", ">", ">gv")

--[[ CMDLINE MODE ]]

key("c", "<C-a>", "<home>")
key("c", "<C-e>", "<end>")
key("c", "<C-b>", "<left>")
key("c", "<C-f>", "<right>")

--[[ TERMINAL ]]

key("t", "<Esc><Esc>", "<C-\\><C-n>")
key("t", "<leader>q", "<C-\\><C-n>:q<cr>")


key("x", "p", "\"_dP")
key({"n", "v" }, "<leader><cr>", "1z=e")

function ToggleStatusLine()
    vim.opt.ls = vim.opt.ls:get() == 0 and 2 or 0
    vim.cmd("redrawstatus")
    -- vim.o.ruler=true
end
key("n", "<leader>ts", ToggleStatusLine)








