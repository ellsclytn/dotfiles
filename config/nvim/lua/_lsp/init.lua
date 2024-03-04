return function()
    require('neodev').setup({})

    local cmp_nvim_lsp = require('cmp_nvim_lsp')
    local lsp_on_attach = require('_lsp.on_attach')
    local lspconfig = require('lspconfig')
    local mason = require('mason')
    local mason_lspconfig = require('mason-lspconfig')

    local lsp_capabilities = cmp_nvim_lsp.default_capabilities()

    mason.setup()
    mason_lspconfig.setup({
        ensure_installed = {
            'bashls',
            'jsonls',
            'lua_ls',
            'rust_analyzer',
            'terraformls',
            'tflint',
            'tsserver',
            'yamlls',
        },
    })

    mason_lspconfig.setup_handlers({
        -- The first entry (without a key) will be the default handler
        -- and will be called for each installed server that doesn't have
        -- a dedicated handler.
        function(server_name)
            lspconfig[server_name].setup({
                on_attach = lsp_on_attach,
                capabilities = lsp_capabilities,
            })
        end,

        -- Workaround: https://github.com/hashicorp/terraform-ls/issues/1655#issuecomment-1976868459
        -- This entire block can hopefully be removed once resolved.
        ['terraformls'] = function()
            lspconfig.terraformls.setup({
                init_options = {
                    terraform = {
                        path = '/usr/bin/terraform',
                    },
                },
            })
        end,
    })

    require('_lsp.null-ls')
    require('_lsp.rust')
    require('_lsp.cmp')
end
