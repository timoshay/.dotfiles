return {
    "Shatur/neovim-ayu",
    name = "ayu",
    lazy = false,
    priority = 1000,
    config = function()
        require('ayu').setup({
            overrides = {
                Comment = { italic = false },
                CursorLine = { bg = "NONE" },
                CursorLineNr = { fg = "#e6b450", bg = "NONE" },
                LineNr = { fg = "#8a8a8a" },
                MatchParen = { fg = "#f07178", bg = "#122132", underline = false },
                -- MatchParen = { fg = "#0b0b14", bg = "#8a8a8a", underline = false },
                FloatBorder = { fg = "#e6b450" },
                LspSignatureActiveParameter = { fg = "#ff8f40" },
                WinSeparator = { fg = "#565b66", bg = "NONE" },
                StatusLineNC = { bg = "NONE" },

                -- ghost text
                NonText = { fg = "#636a72" },

                -- TODO
                Normal = { bg = "NONE" },
                -- Normal = { bg = "#000000" },
                NormalFloat = { bg = "NONE" },
                -- Folded = { bg = "NONE" },
                -- FoldColumn = { bg = "NONE" },
                -- ColorColumn = { bg = "NONE" },
                SignColumn = { bg = "NONE" },
                StatusLine = { bg = "NONE" },
            },
        })
        vim.cmd.colorscheme "ayu-dark"
    end,
}
