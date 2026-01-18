MiniDeps.now(
    function()
        MiniDeps.add({
            source = "nvim-treesitter/nvim-treesitter",
            checkout = "master",
        })
        require("nvim-treesitter").setup({
            build = ":TSUpdate",
            ensure_installed = {
            },
            auto_install = false,
            sync_install = false,
            highlight = { enable = true },
        })
    end)
