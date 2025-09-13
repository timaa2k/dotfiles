-- Diagnostic looks
vim.diagnostic.config {
  virtual_text = false,
  update_in_insert = true,
  float = {
    source = 'if_many'
  }
}

-- Signcolumn symbols
local signs = { Error = '󰅚 ', Warn = '󰗖 ', Hint = '󰌶 ', Info = ' ' }
for type, icon in pairs(signs) do
  local hl = 'DiagnosticSign' .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Show diagnostics on hover
vim.o.updatetime = 150
vim.cmd([[autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })]])

-- LSP Server Setup Goes Below
require('mason').setup()
require('mason-lspconfig').setup {
  automatic_installation = true,
  -- ui = {
  --   check_outdated_servers_on_open = true
  -- }
}
require('mason-tool-installer').setup {
  ensure_installed = {
    'gopls',
    'prettierd',
    'shfmt',
    'markdownlint',
    'shellcheck',
    'write-good',
    'yamllint',
  },
  auto_update = true,
  run_on_start = true
}

local function get_client_capabilities(isClangd)
  local capabilities = vim.lsp.protocol.make_client_capabilities()

  capabilities.textDocument.completion.completionItem.documentationFormat = { 'markdown', 'plaintext' }
  capabilities.textDocument.completion.completionItem.snippetSupport = true
  capabilities.textDocument.completion.completionItem.preselectSupport = true
  capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
  capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
  capabilities.textDocument.completion.completionItem.deprecatedSupport = true
  capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
  capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
  capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
      'documentation',
      'detail',
      'additionalTextEdits',
    },
  }

  if isClangd then
    capabilities.offsetEncoding = "utf-8"
  end

  return capabilities
end

local lspconfig = require('lspconfig')
local capabilities = get_client_capabilities(false)
local clangd_capabilities = get_client_capabilities(true)
local on_attach = function(_, bufnr)
  require 'lsp_signature'.on_attach()
  local keymap = vim.keymap
  local opts = { buffer = bufnr }

  keymap.set('n', 'rn', vim.lsp.buf.rename, { unpack(opts), desc = "Do LSP rename action" })
  keymap.set('n', 'gd', vim.lsp.buf.definition, { unpack(opts), desc = "Do LSP get definition action" })
  keymap.set('n', 'gD', vim.lsp.buf.declaration, { unpack(opts), desc = "Do LSP get declaration action" })
  keymap.set('n', 'gr', vim.lsp.buf.references, { unpack(opts), desc = "Do LSP get references action" })
  keymap.set('n', 'gi', vim.lsp.buf.implementation, { unpack(opts), desc = "Do LSP get implementation action"})
end

-- gopls
lspconfig.gopls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
}
