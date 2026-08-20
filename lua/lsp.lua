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
--[[vim.lsp.config["clangd"] = {
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
vim.lsp.config["pylsp"] = {
	cmd = {
		"pylsp",
	},
	filetypes = {
		"python",
	},
}
vim.lsp.config["typescript-language-server"] = {
	cmd = {
		"typescript-language-server",
		"--stdio",
	},
	filetypes = {
		"javascript",
	},
}
vim.lsp.config["vscode-html-languageserver"] = {
	cmd = {
		"vscode-html-languageserver",
		"--stdio",
	},
	filetypes = {
		"html",
	},
}]]--

vim.lsp.enable("lua-language-server")
vim.lsp.enable("clangd")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("pylsp")
vim.lsp.enable("ts_ls")
vim.lsp.enable("html")
vim.lsp.enable("emmet_language_server")
vim.lsp.enable("cssls")

vim.diagnostic.config({
	virtual_text = true,
	update_in_insert = true,
})
