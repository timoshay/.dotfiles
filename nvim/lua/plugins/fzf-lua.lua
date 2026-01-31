MiniDeps.add({
    source = "ibhagwan/fzf-lua",
})

require("fzf-lua").setup({
    winopts = {
        border = "single",
        -- border = "bold",
        -- border = "none", -- TODO need to add title
        treesitter = false,
        preview = {
            layout = "horizontal",
            title = false,
            border = "single",
        },
    },

    files = {
        winopts = {
            height = 0.70,
            width = 0.80,
            preview = { hidden = true },
        },
    },

    buffers = {
        winopts = {
            height = 0.50,
            width = 0.60,
            preview = { hidden = true },
        },
    },

    grep = {
        winopts = {
            fullscreen = true,
        },
    },

    grep_curbuf = {
        winopts = {
            border = "none",
            fullscreen = true,
            preview = {
            border = "none",
            },
        },
    },

    live_grep = {
        winopts = {
            border = "none",
            fullscreen = true,
            preview = {
            border = "none",
            },
        },
    },

    oldfiles = {
        winopts = {
            height = 0.70,
            width = 0.80,
            preview = { hidden = true },
        },
    },

    helptags = {
        winopts = {
            preview = { hidden = true },
        },
    },

    keymap = {
        builtin = {
            ["<c-f>"] = "preview-page-down",
            ["<c-b>"] = "preview-page-up",
        },
        fzf = {
            ["ctrl-u"] = "half-page-up",
            ["ctrl-d"] = "half-page-down",
        },
    },
})

local map = vim.keymap.set
map("n", "<leader><space>", "<cmd>FzfLua<cr>")
map("n", "<leader><Tab>", "<cmd>FzfLua buffers<cr>")
map("n", "<leader>fh", "<cmd>FzfLua helptags <cr>")
map("n", "<leader>ff", "<cmd>FzfLua files <cr>")
map("n", "<leader>fg", "<cmd>FzfLua live_grep <cr>") -- search in folder
map("n", "<leader>fs", "<cmd>FzfLua grep_curbuf <cr>") -- search in buffer
map("n", "<leader>f?", "<cmd>FzfLua oldfiles <cr>")
map("n", "<leader>f/", "<cmd>FzfLua resume<cr>")
map("n", "<leader>fd", "<cmd>FzfLua lsp_document_diagnostics<cr>")
map("n", "<leader>fD", "<cmd>FzfLua lsp_workspace_diagnostics<cr>")
map("n", "<leader>fr", "<cmd>FzfLua lsp_references<cr>")
map("n", "<leader>ds", "<cmd>FzfLua lsp_document_symbols<cr>")
map("n", "<leader>gW", "<cmd>FzfLua grep_cWORD<cr>") -- grep in buffers
map("n", "<leader>gw", "<cmd>FzfLua grep_cword<cr>") -- grep in working dir

-- add lsptypedef

