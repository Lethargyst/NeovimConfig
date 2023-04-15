local status, nvim_tree = pcall(require, "nvim-tree")
if (not status) then return end

nvim_tree.setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-n>', '<Cmd>NvimTreeOpen<CR>', opts)
vim.keymap.set('n', '<C-m>', '<Cmd>NvimTreeClose<CR>', opts)
