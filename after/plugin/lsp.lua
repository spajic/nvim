local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.ensure_installed({'solargraph'})
lsp.set_preferences({
	sign_icons = {}
})
lsp.on_attach(
function (client, bufnr)
	-- In this case, we create a function that lets us more easily define mappings specific
	-- for LSP related items. It sets the mode, buffer and description for us each time.
	local nmap = function(keys, func, desc)
		if desc then
			desc = 'LSP: ' .. desc
		end

		vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
	end
	print("LSP ATTACHED!")
	nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
end
)
lsp.setup()
