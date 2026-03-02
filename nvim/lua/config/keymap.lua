local tele_builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', tele_builtin.find_files, {desc='Telescope find files'})
vim.keymap.set('n', '<leader>fg', tele_builtin.live_grep, {desc='Telescope Live Grep'})
