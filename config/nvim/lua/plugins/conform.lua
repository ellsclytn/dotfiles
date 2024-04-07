--
-- Use :FormatEnable and :FormatDisable to enable/disable autoformat-on-save. Enabled by default.
--
vim.api.nvim_create_user_command('FormatDisable', function(args)
    if args.bang then
        -- FormatDisable! will disable formatting just for this buffer
        vim.b.disable_autoformat = true
    else
        vim.g.disable_autoformat = true
    end
end, {
    desc = 'Disable autoformat-on-save',
    bang = true,
})

vim.api.nvim_create_user_command('FormatEnable', function()
    vim.b.disable_autoformat = false
    vim.g.disable_autoformat = false
end, {
    desc = 'Re-enable autoformat-on-save',
})

--
-- Go format on save
--
local format_sync_grp = vim.api.nvim_create_augroup('GoFormat', {})
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = '*.go',
    callback = function()
        if vim.g.disable_autoformat or vim.b.disable_autoformat then
            return
        end

        require('go.format').goimports()
    end,
    group = format_sync_grp,
})

return {
    'stevearc/conform.nvim',
    opts = {
        formatters_by_ft = {
            lua = { 'stylua' },
            javascript = { 'prettierd', 'eslint_d' },
            typescript = { 'prettierd', 'eslint_d' },
            javascriptreact = { 'prettierd', 'eslint_d' },
            typescriptreact = { 'prettierd', 'eslint_d' },
            markdown = { 'prettierd' },
            yaml = { 'prettierd' },
            json = { 'prettierd' },
            sh = { 'shfmt' },
        },
        format_on_save = function(bufnr)
            -- Disable with a global or buffer-local variable
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
                return
            end

            -- Don't format Go files with this plugin, the GoFormat autocmd will handle it
            if vim.bo[bufnr].filetype == 'go' then
                return
            end

            return { lsp_fallback = true }
        end,
    },
    event = 'BufWritePre',
    cmd = 'ConformInfo',
}
