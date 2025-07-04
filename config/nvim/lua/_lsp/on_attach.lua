vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
        if not client then
            return
        end

        local bufnr = args.buf

        if client.server_capabilities.documentSymbolProvider then
            require('nvim-navic').attach(client, bufnr)
        end

        if client.name == 'markdown_oxide' then
            vim.api.nvim_create_user_command('Daily', function(a)
                local input = a.args

                if input == '' then
                    input = 'today'
                end

                client:exec_cmd({
                    title = 'jump',
                    command = 'jump',
                    arguments = { input },
                })
            end, { desc = 'Open daily note', nargs = '*' })
        end
    end,
})
