local wk = require('which-key')

-- Toggle relative/absolute line numbers
vim.keymap.set('n', '<leader>rl', ':setlocal relativenumber!<cr>')

-- Window nav similar to i3 navigation
vim.keymap.set('n', '<C-H>', '<C-W><C-H>')
vim.keymap.set('n', '<C-J>', '<C-W><C-J>')
vim.keymap.set('n', '<C-K>', '<C-W><C-K>')
vim.keymap.set('n', '<C-L>', '<C-W><C-L>')

-- Double space over word to Subvert
vim.keymap.set('n', '<Space><Space>', ':%S/<C-r>=expand("<cword>")<CR>/')
-- Leader + space over word to find and replace
vim.keymap.set('n', '<leader><Space>', ':%s/<C-r>=expand("<cword>")<CR>/')

-- Reselect visual block after indent
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- LSP
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
vim.keymap.set('n', 'gr', vim.lsp.buf.references)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
vim.keymap.set('n', 'sd', vim.diagnostic.open_float)
vim.keymap.set('n', 'sa', vim.lsp.buf.code_action)
vim.keymap.set('n', 'K', vim.lsp.buf.hover)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help)
vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename)

-- Buffer management
wk.add({
    { '<leader>b', group = 'Buffers' },
    { '<leader>bl', ':BufferLinePick<cr>', desc = 'Pick buffer' },

    { '<leader>bd', group = 'Delete buffers' },
    { '<leader>bdc', ':b#|bd#<cr>', desc = 'Delete current buffer' },
    { '<leader>bdl', ':BufferLineCloseLeft<cr>', desc = 'Delete buffers to the left' },
    { '<leader>bdo', ':BufferLineCloseOthers<cr>', desc = 'Delete other buffers' },
    { '<leader>bdr', ':BufferLineCloseRight<cr>', desc = 'Delete buffers to the right' },
})

-- Git
wk.add({
    { '<leader>g', group = 'Git' },
    { '<leader>gs', ':Neogit<cr>', desc = 'Git status' },
    {
        mode = { 'n', 'v' },
        {
            '<leader>gbl',
            function()
                require('gitsigns').blame_line({ full = true })
            end,
            desc = 'Toggle blame',
        },
        { '<leader>gbr', ':GBrowse<cr>', desc = 'Open in browser' },
    },
})

-- Debug
wk.add({
    { '<leader>d', group = 'Debug' },
    {
        '<leader>du',
        function()
            require('dapui').toggle({})
        end,
        desc = 'DAP UI',
    },
    {
        '<leader>db',
        function()
            require('dap').toggle_breakpoint()
        end,
        desc = 'Toggle Breakpoint',
    },
    {
        '<leader>dc',
        function()
            require('dap').continue()
        end,
        desc = 'Continue',
    },
    {
        '<leader>dC',
        function()
            require('dap').run_to_cursor()
        end,
        desc = 'Run to Cursor',
    },
    {
        '<leader>dT',
        function()
            require('dap').terminate()
        end,
        desc = 'Terminate',
    },
    {
        '<leader>d?',
        function()
            require('dapui').eval(nil, { enter = true })
        end,
        desc = 'Evaluate',
    },
})

-- Misc/ungrouped
wk.add({
    {
        '<leader>c',
        '"+',
        desc = 'System Clipboard register',
        mode = { 'n', 'v' },
    },
    {
        '<leader>ta',
        ':TerraformAddress<cr>',
        desc = 'Yank Terraform address',
    },
    {
        -- Word separator toggle
        '<leader>ws',
        function()
            if vim.tbl_contains(vim.opt.iskeyword:get(), '_') then
                vim.opt.iskeyword:remove('_')
                vim.opt.iskeyword:remove('-')
                vim.notify('iskeyword: _ and - are word separators')
            else
                vim.opt.iskeyword:append('_')
                vim.opt.iskeyword:append('-')
                vim.notify('iskeyword: _ and - are word characters')
            end
        end,
        desc = 'Toggle word separators (_ and -)',
    },
})

-- Treesitter textobjects
local select_textobjects = {
    {
        binding = 'a=',
        desc = 'Select outer part of an assignment',
        query_string = '@assignment.outer',
    },
    {
        binding = 'i=',
        desc = 'Select inner part of an assignment',
        query_string = '@assignment.inner',
    },
    {
        binding = 'l=',
        desc = 'Select left hand side of an assignment',
        query_string = '@assignment.lhs',
    },
    {
        binding = 'r=',
        desc = 'Select right hand side of an assignment',
        query_string = '@assignment.rhs',
    },
    {
        binding = 'aa',
        desc = 'Select outer part of a parameter/argument',
        query_string = '@parameter.outer',
    },
    {
        binding = 'ia',
        desc = 'Select inner part of a parameter/argument',
        query_string = '@parameter.inner',
    },
    {
        binding = 'ai',
        desc = 'Select outer part of a conditional',
        query_string = '@conditional.outer',
    },
    {
        binding = 'ii',
        desc = 'Select inner part of a conditional',
        query_string = '@conditional.inner',
    },
    {
        binding = 'al',
        desc = 'Select outer part of a loop',
        query_string = '@loop.outer',
    },
    {
        binding = 'il',
        desc = 'Select inner part of a loop',
        query_string = '@loop.inner',
    },
    {
        binding = 'af',
        desc = 'Select outer part of a function call',
        query_string = '@call.outer',
    },
    {
        binding = 'if',
        desc = 'Select inner part of a function call',
        query_string = '@call.inner',
    },
    {
        binding = 'am',
        desc = 'Select outer part of a method/function definition',
        query_string = '@function.outer',
    },
    {
        binding = 'im',
        desc = 'Select inner part of a method/function definition',
        query_string = '@function.inner',
    },
    {
        binding = 'ac',
        desc = 'Select outer part of a class',
        query_string = '@class.outer',
    },
    {
        binding = 'ic',
        desc = 'Select inner part of a class',
        query_string = '@class.inner',
    },
}

for _, textobject in ipairs(select_textobjects) do
    wk.add({
        {
            textobject.binding,
            function()
                require('nvim-treesitter-textobjects.select').select_textobject(textobject.query_string, 'textobjects')
            end,
            desc = textobject.desc,
            mode = { 'x', 'o' },
        },
    })
end

local move_textobjects = {
    {
        binding = ']f',
        desc = 'Next function call start',
        query_string = '@call.outer',
        call = 'goto_next_start',
    },
    {
        binding = ']m',
        desc = 'Next method/function def start',
        query_string = '@function.outer',
        call = 'goto_next_start',
    },
    {
        binding = ']c',
        desc = 'Next class start',
        query_string = '@class.outer',
        call = 'goto_next_start',
    },
    {
        binding = ']i',
        desc = 'Next conditional start',
        query_string = '@conditional.outer',
        call = 'goto_next_start',
    },
    {
        binding = ']l',
        desc = 'Next loop start',
        query_string = '@loop.outer',
        call = 'goto_next_start',
    },
    {
        binding = ']s',
        desc = 'Next scope',
        query_string = '@local.scope',
        call = 'goto_next_start',
    },
    {
        binding = ']z',
        desc = 'Next fold',
        query_string = '@fold',
        call = 'goto_next_start',
    },
    {
        binding = ']F',
        desc = 'Next function call end',
        query_string = '@call.outer',
        call = 'goto_next_end',
    },
    {
        binding = ']M',
        desc = 'Next method/function def end',
        query_string = '@function.outer',
        call = 'goto_next_end',
    },
    {
        binding = ']C',
        desc = 'Next class end',
        query_string = '@class.outer',
        call = 'goto_next_end',
    },
    {
        binding = ']I',
        desc = 'Next conditional end',
        query_string = '@conditional.outer',
        call = 'goto_next_end',
    },
    {
        binding = ']L',
        desc = 'Next loop end',
        query_string = '@loop.outer',
        call = 'goto_next_end',
    },
    {
        binding = '[f',
        desc = 'Prev function call start',
        query_string = '@call.outer',
        call = 'goto_previous_start',
    },
    {
        binding = '[m',
        desc = 'Prev method/function def start',
        query_string = '@function.outer',
        call = 'goto_previous_start',
    },
    {
        binding = '[c',
        desc = 'Prev class start',
        query_string = '@class.outer',
        call = 'goto_previous_start',
    },
    {
        binding = '[i',
        desc = 'Prev conditional start',
        query_string = '@conditional.outer',
        call = 'goto_previous_start',
    },
    {
        binding = '[l',
        desc = 'Prev loop start',
        query_string = '@loop.outer',
        call = 'goto_previous_start',
    },
    {
        binding = '[F',
        desc = 'Prev function call end',
        query_string = '@call.outer',
        call = 'goto_previous_end',
    },
    {
        binding = '[M',
        desc = 'Prev method/function def end',
        query_string = '@function.outer',
        call = 'goto_previous_end',
    },
    {
        binding = '[C',
        desc = 'Prev class end',
        query_string = '@class.outer',
        call = 'goto_previous_end',
    },
    {
        binding = '[I',
        desc = 'Prev conditional end',
        query_string = '@conditional.outer',
        call = 'goto_previous_end',
    },
    {
        binding = '[L',
        desc = 'Prev loop end',
        query_string = '@loop.outer',
        call = 'goto_previous_end',
    },
}

for _, textobject in ipairs(move_textobjects) do
    wk.add({
        {
            textobject.binding,
            function()
                print(textobject.call)
                require('nvim-treesitter-textobjects.move')[textobject.call](textobject.query_string, 'textobjects')
            end,
            desc = textobject.desc,
            mode = { 'n', 'x', 'o' },
        },
    })
end
