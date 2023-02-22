local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.git_files, {})  -- [f]ind [f]iles in git
vim.keymap.set('n', '<leader>fa', builtin.find_files, {}) -- [f]ind [a]ll files (not only git)
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})  -- [f]ind [g]rep
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})    -- [f]ind [b]uffers
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})  -- [f]ind [h]elp
