return {
    'folke/trouble.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    keys = {
        { '<leader>xx', '<cmd>Trouble<cr>' },
        { '<leader>xw', '<cmd>Trouble workspace_diagnostics<cr>' },
        { '<leader>xd', '<cmd>Trouble document_diagnostics<cr>' },
        { '<leader>xl', '<cmd>Trouble loclist<cr>' },
        { '<leader>xq', '<cmd>Trouble quickfix<cr>' },
        { 'gR', '<cmd>Trouble lsp_references<cr>' },
    },
}
