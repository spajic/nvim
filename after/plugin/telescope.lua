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
vim.keymap.set('n', '<leader>fa', builtin.find_files, {desc = '[f]ind [a]ll files (not only git)'})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = '[f]ind [g]rep'})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = '[f]ind [b]uffers'})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = '[f]ind [h]elp'})
vim.keymap.set('n', '<leader>fz', function()
  builtin.grep_string({search = ''})
end, {desc = '[f]ind fu[z]zy'})
vim.keymap.set('n', '<leader>fw', builtin.grep_string, {desc = '[f]ind [w]ord under the cursor'})
vim.keymap.set('n', '<leader>ff', function()
  vim.cmd(':Telescope file_browser')
end, {desc = '[f]ind [f]iles in file browser'})
vim.api.nvim_set_keymap("n", 
  "<leader><leader>", 
  "<Cmd>lua require('telescope').extensions.frecency.frecency({ workspace = 'CWD', path_display={shorten = {len = 3}} })<CR>",
  {noremap = true, silent = true}
)
vim.keymap.set('n', '<leader>fd', require('telescope.builtin').diagnostics, { desc = '[f]ind [d]iagnostics' })

-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
  defaults = { -- SEE :h telescope.defaults
    path_display = {'truncate'},
  },
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
