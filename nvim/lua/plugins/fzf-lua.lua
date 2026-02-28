return {
    "ibhagwan/fzf-lua",
    keys = {
        { "<leader><space>", "<cmd>FzfLua<cr>"  },
        { "<leader><Tab>", "<cmd>FzfLua buffers<cr>" },
        { "<leader>fh", "<cmd>FzfLua helptags <cr>" },
        { "<leader>ff", "<cmd>FzfLua files <cr>" },
        { "<leader>fs", "<cmd>FzfLua live_grep <cr>" },
        { "<leader>/", "<cmd>FzfLua grep_curbuf <cr>" },
        { "<leader>f?", "<cmd>FzfLua oldfiles <cr>" },
        { "<leader>fc", "<cmd>FzfLua resume<cr>" },
        { "<leader>fd", "<cmd>FzfLua lsp_document_diagnostics<cr>" },
        { "<leader>fD", "<cmd>FzfLua lsp_workspace_diagnostics<cr>" },
        { "<leader>fr", "<cmd>FzfLua lsp_references<cr>" },
        { "<leader>ds", "<cmd>FzfLua lsp_document_symbols<cr>" },
        { "<leader>gW", "<cmd>FzfLua grep_cWORD<cr>" },
        { "<leader>gw", "<cmd>FzfLua grep_cword<cr>" },
    },
    opts = {
        winopts = {
            border = "single",
            -- border = "bold",
            -- border = "none", -- TODO need to add title
            treesitter = false,
            fullscreen = true,
            preview = {
                -- layout = "horizontal",
                title = false,
                border = "single",
            },
        },

        builtin = {
            winopts = {
            fullscreen = false,
        },
        },

        files = {
            winopts = {
                fullscreen = false,
                height = 0.70,
                width = 0.80,
                preview = { hidden = true },
            },
        },

        buffers = {
            winopts = {
                fullscreen = false,
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
                -- preview = {
                --     border = "none",
                -- },
            },
        },

        live_grep = {
            winopts = {
                border = "none",
                fullscreen = true,
                -- preview = {
                --     border = "none",
                -- },
            },
        },

        oldfiles = {
            winopts = {
                fullscreen = false,
                height = 0.70,
                width = 0.80,
                preview = { hidden = true },
            },
        },

        helptags = {
            winopts = {
                fullscreen = false,
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
    }
}
