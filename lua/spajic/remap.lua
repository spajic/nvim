vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex) -- go to explorer (netrw)

-- Configure inline diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics, {
	virtual_text = {
		prefix = "~",
		spacing = 0,
	},
	signs = false,
	underline = true,
}
)
vim.keymap.set("i", "jj", "<Esc>") -- jj for Esc from Insert mode
vim.keymap.set("i", "ww", "<Esc>:w<CR>") -- ww to save and go to Normal mode 

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move selected lines up
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- move selected lines down
vim.keymap.set("n", "J", "mzJ`z") -- do not move cursor after applying J

vim.keymap.set("n", "<C-d>", "<C-d>zz") -- move half page down, cursor stays
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- move half page up, cursor stays

vim.keymap.set("n", "n", "nzzzv") -- search result stays in the middle
vim.keymap.set("n", "N", "Nzzzv") -- search result stays in the middle
vim.keymap.set("n", "<CR>", ":noh<CR>")
vim.keymap.set( -- replace a word under a cursor
  "n",
  "<leader>s",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]
)

vim.keymap.set('n', '<C-k>', ':BufferLineCycleNext<CR>', { silent = true, noremap = true })
vim.keymap.set('n', '<C-j>', ':BufferLineCyclePrev<CR>', { silent = true, noremap = true })
vim.keymap.set('n', '<C-x>', ':bd<CR>', { silent = true, noremap = true })

-- copy current path to clipboard
vim.keymap.set('n', '<Leader>cp', ':let @+=@% <CR>', { silent = true, noremap = true, desc = '[C]opy [P]ath'})
