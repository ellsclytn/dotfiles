local lspconfig = require('lspconfig')
local lsp_installer = require('nvim-lsp-installer')
local lsp_on_attach = require('_lsp.on_attach')

lsp_installer.setup({
    ensure_installed = {
        'rust_analyzer',
        'tsserver',
        'terraformls',
        'tflint',
    },
})

lspconfig.tsserver.setup({
    on_attach = function(client)
        -- Formatting is handled by null-ls (eslint and prettier)
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
    end,
})

-- nvim-cmp supports additional completion capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

for _, server in ipairs({
    'rust_analyzer',
    'terraformls',
    'tflint',
}) do
    lspconfig[server].setup({ on_attach = lsp_on_attach })
end

require('_lsp.null-ls')
require('_lsp.cmp')
