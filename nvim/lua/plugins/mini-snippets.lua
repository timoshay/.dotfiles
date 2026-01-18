MiniDeps.add({ source = "https://github.com/rafamadriz/friendly-snippets", })

MiniDeps.later(
    function()
        local snippets = require("mini.snippets")
       snippets.setup({
           snippets = {
               snippets.gen_loader.from_lang()
           },
           mappings = {
               -- expand = '',
               expand = '<C-j>',
               jump_next = '<Tab>',
               jump_prev = '<S-Tab>',
           },
        })
MiniSnippets.start_lsp_server()
    end)



-- return {
--         "https://github.com/nvim-mini/mini.snippets",
--         dependencies = "https://github.com/rafamadriz/friendly-snippets",
--
-- -- local gen_loader = require('mini.snippets').gen_loader
--     opts = function()
--         require('mini.snippets').setup({
-- local gen_loader = require('mini.snippets').gen_loader
--     snippets = {
--         -- require('mini.snippets').gen_loader.from_file(vim.fn.stdpath('config') .. '/snippets/global.json'),
--         -- require('mini.snippets').gen_loader.from_lang({ lang_patterns = lang_patterns }),
--         gen_loader.from_file('~/.config/nvim/snippets/global.json'),
--         gen_loader.from_lang(),
--     },
--     })
-- end,
-- }
--
--     snippets = {
--         require('mini.snippets').gen_loader.from_file(config_path .. '/snippets/global.json'),
--         require('mini.snippets').gen_loader.from_lang({ lang_patterns = lang_patterns }),
--     },
--
-- local latex_patterns = { 'latex/**/*.json', '**/latex.json' }
-- local lang_patterns = {
--     tex = latex_patterns, plaintex = latex_patterns,
--     -- Recognize special injected language of markdown tree-sitter parser
--     markdown_inline = { 'markdown.json' },
-- }
--
-- local gen_loader = require('mini.snippets').gen_loader
-- local config_path = vim.fn.stdpath('config')
--
-- },
-- MiniSnippets.start_lsp_server()
-- }
