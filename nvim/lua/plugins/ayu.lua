MiniDeps.now(
    function()
        MiniDeps.add({
            source = "Shatur/neovim-ayu",
        })
        require('ayu').setup({
            overrides = {
                Comment = { italic = false },
                CursorLine = { bg = "NONE" },
                CursorLineNr = { bg = "NONE" },
                LineNr = { fg = "#8a8a8a" },
                MatchParen = { fg = "#0b0b14", bg = "#8a8a8a", underline = false },

                -- TODO
                Normal = { bg = "NONE" },
                NormalFloat = { bg = "NONE" },
                -- Folded = { bg = "NONE" },
                -- FoldColumn = { bg = "NONE" },
                -- ColorColumn = { bg = "NONE" },
                SignColumn = { bg = "NONE" },
                StatusLine = { bg = "NONE" },
                -- VertSplit = { bg = "NONE" },
            },
        })
        vim.cmd.colorscheme "ayu-dark"
    end)
