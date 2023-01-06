local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

return function(client, bufnr)
    if client.supports_method('textDocument/formatting') then
        -- Enable format on save for new buffers (can be toggled)
        vim.b.format_on_save = true

        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim.api.nvim_create_autocmd('BufWritePre', {
            group = augroup,
            buffer = bufnr,
            callback = function()
                if vim.b.format_on_save then
                    vim.lsp.buf.format({ bufnr = bufnr })
                end
            end,
        })
    end
end
