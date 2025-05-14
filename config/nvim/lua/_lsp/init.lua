return function()
    require('neodev').setup({})

    local cmp_nvim_lsp = require('cmp_nvim_lsp')
    local lsp_on_attach = require('_lsp.on_attach')
    local lspconfig = require('lspconfig')
    local mason = require('mason')
    local mason_lspconfig = require('mason-lspconfig')

    local lsp_capabilities = cmp_nvim_lsp.default_capabilities()

    vim.lsp.set_log_level('off')
    mason.setup()
    mason_lspconfig.setup()

    for _, server in ipairs(mason_lspconfig.get_installed_servers()) do
        -- Specific rust-analyzer setup.
        if server == 'rust_analyzer' then
        -- Other servers.
        else
            vim.lsp.config(server, {
                on_attach = lsp_on_attach,
                capabilities = lsp_capabilities,
            })
        end
    end

    require('_lsp.rust')
    require('_lsp.cmp')
end
