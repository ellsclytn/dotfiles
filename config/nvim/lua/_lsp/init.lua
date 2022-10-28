local lspconfig = require('lspconfig')
local lsp_on_attach = require('_lsp.on_attach')
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')

mason.setup()

mason_lspconfig.setup({
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
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
    end,
})

-- nvim-cmp supports additional completion capabilities
capabilities = require('cmp_nvim_lsp').default_capabilities()

for _, server in ipairs({
    'rust_analyzer',
    'terraformls',
    'tflint',
}) do
    lspconfig[server].setup({ on_attach = lsp_on_attach })
end

require('_lsp.null-ls')
require('_lsp.cmp')
