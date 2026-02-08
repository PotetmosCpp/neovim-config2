vim.lsp.config["lua-language-server"] = {
	cmd = {
		"lua-language-server",
	},
	filetypes = {
		"lua",
	},
	settings = {
		Lua = {
			workspace = {
				library = {
					vim.env.VIMRUNTIME,
				},
			},
		},
	},
}
vim.lsp.config["clangd"] = {
	cmd = {
		"clangd",
	},
	filetypes = {
		"c",
		"cpp",
	},
}
vim.lsp.config["rust-analyzer"] = {
	cmd = {
		"rust-analyzer",
	},
	filetypes = {
		"rust",
	},
}

vim.lsp.enable("lua-language-server")
vim.lsp.enable("clangd")
vim.lsp.enable("rust-analyzer")

vim.diagnostic.config({
	virtual_text = true,
	update_in_insert = true,
})
