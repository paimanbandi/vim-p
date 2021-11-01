require'FTerm'.setup({
    border = 'double',
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
})

local m = vim.api.nvim_set_keymap
local o = { noremap = true, silent = true }

m('n', '<F12>', '<CMD>lua require("FTerm").toggle()<CR>', o)
m('t', '<F12>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', o)
