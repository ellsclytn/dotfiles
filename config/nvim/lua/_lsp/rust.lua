return function(on_attach, capabilities)
    return function()
        require('rust-tools').setup({
            server = {
                on_attach = lsp_on_attach,
                settings = {
                    -- List of all options:
                    -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
                    ['rust-analyzer'] = {
                        check = {
                            command = 'clippy',
                        },
                    },
                },
            },
            capabilities = lsp_capabilities,
        })
    end
end
