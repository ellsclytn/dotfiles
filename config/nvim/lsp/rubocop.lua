return {
    root_dir = function(_, on_dir)
        local rubocop_yml = vim.fs.find('.rubocop.yml', { upward = true })[1]

        if rubocop_yml then
            on_dir(vim.fs.dirname(rubocop_yml))
        end
    end,
}
