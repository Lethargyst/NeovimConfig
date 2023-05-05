local status, flutter_tools = pcall(require, "flutter-tools")
if (not status) then return end

local on_attach = function(client, bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }

  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)

  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)

  vim.keymap.set('n', 'lr', vim.lsp.buf.rename, bufopts)

  vim.keymap.set('n', '<space>lf', function() vim.lsp.buf.format { async = true } end, bufopts)
end

-- alternatively you can override the default configs
flutter_tools.setup({
  debugger = {
    enabled = true,
    run_via_dap = true,
  },
  outline = {
    auto_open = false,
    open_cmd = "45vnew",
  },
  decorations = {
    statusline = { device = true, app_version = true },
  },
  widget_guides = { enabled = true, debug = true },
  dev_log = { enabled = false, open_cmd = "tabedit" },
  lsp = {
    color = {
      enabled = true,
      background = true,
      virtual_text = false,
    },
    settings = {
      showTodos = true,
      renameFilesWithClasses = "prompt",
    },
    on_attach = on_attach,
    -- capabilities = vim.lsp.capabilities,
  },
})

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-m>', '<Cmd>FlutterOutlineOpen<CR>', opts)
