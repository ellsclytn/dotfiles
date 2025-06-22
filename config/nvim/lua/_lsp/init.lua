return function()
    require('_lsp.on_attach')

    local cmp_nvim_lsp = require('cmp_nvim_lsp')
    local mason = require('mason')
    local mason_lspconfig = require('mason-lspconfig')

    vim.lsp.set_log_level('off')
    mason.setup()
    mason_lspconfig.setup()

    vim.lsp.config('*', {
        capabilities = cmp_nvim_lsp.default_capabilities(),
    })

    require('_lsp.rust')
    require('_lsp.cmp')
end
