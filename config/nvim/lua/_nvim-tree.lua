return function()
    require('nvim-tree').setup({
        view = {
            width = 30,
            side = 'left',
        },
        renderer = {
            root_folder_label = false,
        },
        disable_netrw = true,
        hijack_cursor = true,
        sync_root_with_cwd = true,
    })
    vim.g.nvim_tree_indent_markers = 1
end
