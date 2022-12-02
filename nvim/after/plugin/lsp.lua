-- map keys only after the language server attaches to the current buffer
local function on_attach(client, bufnr)
    local buffs = {silent = true, buffer = 0}
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, buffs)
    vim.keymap.set('n', 'gT', vim.lsp.buf.type_definition, buffs)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, buffs)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, buffs)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, buffs)
    vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, buffs)
    vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, buffs)
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, buffs)
end

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- For C++/clang
require'lspconfig'.clangd.setup{
    capabilities = capabilities,
    on_attach = on_attach
}

-- For python 
require'lspconfig'.pylsp.setup{
    capabilities = capabilities,
    on_attach = on_attach
}
