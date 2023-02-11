return function()
    require('nvim-tree').setup({
        view = { width = 30, side = 'left', hide_root_folder = true },
        disable_netrw = true,
        hijack_cursor = true,
        sync_root_with_cwd = true,
    })
    vim.g.nvim_tree_indent_markers = 1
end
