local null_ls = require('null-ls')
local on_attach = require('_lsp.on_attach')

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.formatting.eslint_d,
        null_ls.builtins.formatting.shfmt,
    },
    on_attach = on_attach,
})
