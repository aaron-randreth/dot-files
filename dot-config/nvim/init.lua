-- transparent background
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })

-- Use spaces for tabulation
local SPACE_NUMBER = 4
vim.o.tabstop = SPACE_NUMBER
vim.o.shiftwidth = SPACE_NUMBER
vim.o.expandtab = true

-- Display numbers
vim.o.number = true
vim.o.relativenumber = true

-- Map jj and jk to Esc in insert mode
vim.keymap.set('i', 'jj', '<Esc>', { silent = true })
vim.keymap.set('i', 'jk', '<Esc>', { silent = true })
vim.keymap.set('i', '<Esc>', '<Nop>', { silent = true })

-- Unmap arrow keys in normal mode
vim.keymap.set('', '<Up>', '<Nop>', { silent = true })
vim.keymap.set('', '<Down>', '<Nop>', { silent = true })
vim.keymap.set('', '<Left>', '<Nop>', { silent = true })
vim.keymap.set('', '<Right>', '<Nop>', { silent = true })

vim.pack.add({
    'https://github.com/nvim-mini/mini.nvim'
})

function configure_trailspace ()
    local trailspace = require('mini.trailspace')
    trailspace.setup()

    -- Trim spaces on write
    vim.api.nvim_create_autocmd('BufWritePre', {
        callback = function()
            trailspace.trim()
            trailspace.trim_last_lines()
        end
    })
end

configure_trailspace()
require('mini.pairs').setup()

-- Source - https://stackoverflow.com/a/75302916
-- Posted by Mr.Programmer
-- Retrieved 2026-04-25, License - CC BY-SA 4.0

-- Sets colors to line numbers Above, Current and Below  in this order
function color_line_number()
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#51B3EC', bold=true })
    vim.api.nvim_set_hl(0, 'LineNr', { fg='white', bold=true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#FB508F', bold=true })
end

color_line_number()
