return function(client)
    -- autoformat on save
    -- FormattingOptions https://microsoft.github.io/language-server-protocol/specification
    if client.resolved_capabilities.document_formatting then
        vim.cmd([[
        augroup LspFormatting
            autocmd! * <buffer>
            autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()
        augroup END
        ]])
    end
end
