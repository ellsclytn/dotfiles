local modules = {
    '_config',
    '_mappings',
    '_plugins',
    '_gitsigns',
    '_nvim-tree',
    '_onedark',
    '_statusline'
}

for _, module_name in ipairs(modules) do
    local ok, err = pcall(require, module_name)
    if not ok then
        error('Error calling ' .. module_name .. err)
    end
end
