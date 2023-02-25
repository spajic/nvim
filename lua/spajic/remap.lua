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
