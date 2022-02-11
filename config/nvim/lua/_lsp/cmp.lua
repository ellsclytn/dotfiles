local cmp = require('cmp')
local lspkind = require('lspkind')
cmp.setup({
    formatting = {
        format = lspkind.cmp_format({
            mode = 'symbol', -- show only symbol annotations
        }),
    },
    mapping = {
        ['<Tab>'] = cmp.mapping.select_prev_item(),
        ['<S-Tab>'] = cmp.mapping.select_next_item(),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }),
        ['<Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end,
        ['<S-Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end,
    },
    sources = {
        { name = 'nvim_lsp' },
    },
})
