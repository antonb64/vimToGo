require'FTerm'.setup({
    border = 'double',
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
    cmd = 'powershell.exe'
})



vim.api.nvim_create_user_command('FTermExit', require('FTerm').exit, { bang = true })
vim.api.nvim_create_user_command('FTermClose', require('FTerm').close, { bang = true })
vim.api.nvim_create_user_command('FTermOpen', require('FTerm').open, { bang = true })
vim.api.nvim_create_user_command('FTermToggle', require('FTerm').toggle, { bang = true })


vim.api.nvim_set_keymap('n', '<leader>fc', ':FTermClose<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>fo', ':FTermOpen<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<leader>fe', ':FTermExit<CR>', { silent = true })

require('vgit').setup()
