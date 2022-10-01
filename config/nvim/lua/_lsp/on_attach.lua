return function(client)
    -- autoformat on save
    -- FormattingOptions https://microsoft.github.io/language-server-protocol/specification
    if client.server_capabilities.documentFormattingProvider then
        vim.b.format_on_save = true

        vim.cmd([[
        augroup LspFormatting
            autocmd! * <buffer>
            autocmd BufWritePre <buffer> lua if vim.b.format_on_save then vim.lsp.buf.formatting_seq_sync() end
        augroup END
        ]])
    end
end
