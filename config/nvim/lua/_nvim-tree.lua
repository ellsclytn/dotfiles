local present, nvim_tree = pcall(require, 'nvim-tree')
if present then
    nvim_tree.setup({
        view = { width = 30, side = 'left', hide_root_folder = true },
        disable_netrw = true,
        hijack_cursor = true,
        update_cwd = true,
        update_to_buf_dir = { auto_open = false },
    })
    vim.g.nvim_tree_indent_markers = 1
end
