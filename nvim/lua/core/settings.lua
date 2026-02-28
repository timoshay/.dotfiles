vim.o.number = true
vim.o.relativenumber = true
vim.o.laststatus = 2
vim.o.pumheight = 8
vim.o.pumblend = 0
vim.o.termguicolors = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.ignorecase = true
vim.o.signcolumn = "yes:1"
vim.o.completeopt = "menuone,noinsert,fuzzy,nosort"
-- vim.o.completeopt = "menuone,noselect,fuzzy,nosort"
vim.o.updatetime = 1000
vim.o.undofile = true
vim.o.showmode = true
vim.o.wildmode = "longest:full,full"
vim.o.formatoptions = "rjcqlnt"
vim.o.cursorline = true
vim.o.colorcolumn = "80"
vim.o.scrolloff = 10
vim.o.sidescrolloff = 10
vim.o.swapfile = false
vim.o.backup = false
vim.o.hidden = true
vim.opt.fillchars = {
  horiz = '━',
  horizup = '┻',
  horizdown = '┳',
  vert = '┃',
  vertleft  = '┫',
  vertright = '┣',
  verthoriz = '╋',
  eob = ' ',
}
vim.o.listchars = 'extends:…,nbsp:␣,precedes:…,tab:> '
vim.o.list = true
vim.o.wrap = false
vim.o.virtualedit = "block"
vim.o.jumpoptions = "stack"
vim.o.switchbuf   = 'usetab'
vim.o.ruler = false
vim.o.complete    = '.,w,b,u,i'
-- vim.o.complete    = '.,w,b,u,i,kspell'
vim.o.confirm = true

local langmap_keys = {
  'ёЁ;`~', '№;#',
  'йЙ;qQ', 'цЦ;wW', 'уУ;eE', 'кК;rR', 'еЕ;tT', 'нН;yY', 'гГ;uU', 'шШ;iI', 'щЩ;oO', 'зЗ;pP', 'хХ;[{', 'ъЪ;]}',
  'фФ;aA', 'ыЫ;sS', 'вВ;dD', 'аА;fF', 'пП;gG', 'рР;hH', 'оО;jJ', 'лЛ;kK', 'дД;lL', [[жЖ;\;:]], [[эЭ;'\"]],
  'яЯ;zZ', 'чЧ;xX', 'сС;cC', 'мМ;vV', 'иИ;bB', 'тТ;nN', 'ьЬ;mM', [[бБ;\,<]], 'юЮ;.>',
}
vim.o.langmap = table.concat(langmap_keys, ',')

-- Enable all filetype plugins and syntax (if not enabled, for better startup)
vim.cmd('filetype plugin indent on')
if vim.fn.exists('syntax_on') ~= 1 then vim.cmd('syntax enable') end



vim.g.loaded_gzip = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_zip = 1
vim.g.loaded_zipPlugin = 1
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
-- vim.g.loaded_python3_provider = 0
-- vim.g.loaded_ruby_provider = 0
-- vim.g.loaded_perl_provider = 0
-- vim.g.loaded_node_provider = 0

vim.g.mapleader = " "

