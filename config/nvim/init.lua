local modules = {
    '_config',
    '_mappings',
    '_filetypes',
    '_spelling',
}

for _, module_name in ipairs(modules) do
    local ok, err = pcall(require, module_name)
    if not ok then
        error('Error calling ' .. module_name .. err)
    end
end

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup(require('_plugins'))
