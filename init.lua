require('craftzdog.base')
require('craftzdog.highlights')
require('craftzdog.maps')
require('craftzdog.plugins')

vim.cmd("colorscheme kanagawa-wave")
-- vim.cmd("colorscheme kanagawa-dragon")
-- vim.cmd("colorscheme kanagawa-lotus")

vim.wo.relativenumber = true
vim.wo.cursorline = true
vim.wo.cursorcolumn = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- flutter
require("flutter-tools").setup({})

-- indention
vim.opt.list = true

require("indent_blankline").setup {
  show_end_of_line = true,
  space_char_blankline = " ",
}
