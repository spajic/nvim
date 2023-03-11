local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>?', builtin.git_files, {})  -- find git files

vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })
-- TODO: Rework my comments to desc attribute
vim.keymap.set('n', '<leader>fa', builtin.find_files, {})       -- [f]ind [a]ll files (not only git)
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})        -- [f]ind [g]rep
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})          -- [f]ind [b]uffers
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})        -- [f]ind [h]elp
vim.keymap.set('n', '<leader>fz', function()                    -- [f]ind fu[z]zy
  builtin.grep_string({search = ''})
end)
vim.keymap.set('n', '<leader>fc', builtin.grep_string, {})      -- [f]ind term under [c]ursor
vim.keymap.set('n', '<leader>ff', function() --                 -- [f]ind [f]iles in file browser
  vim.cmd(':Telescope file_browser')
end)
vim.api.nvim_set_keymap("n", "<leader><leader>", "<Cmd>lua require('telescope').extensions.frecency.frecency({ workspace = 'CWD' })<CR>", {noremap = true, silent = true})
vim.keymap.set('n', '<leader>fd', require('telescope.builtin').diagnostics, { desc = '[F]ind [D]iagnostics' })

-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    },
    bookmarks = {
      selected_browser = "chrome",
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')

require('telescope').load_extension('bookmarks')
