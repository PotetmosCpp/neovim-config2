vim.lsp.config["clangd"] = {
	cmd = { "clangd" },
	filetypes = { "c", "cpp" }
}
vim.lsp.config["rust-analyzer"] = {
	cmd = { "rust-analyzer" },
	filetypes = { "rs", "rust" }
}
vim.lsp.config["zls"] = {
	cmd = { "zls" },
	filetypes = { "zig" }
}

vim.lsp.enable("clangd")
vim.lsp.enable("rust-analyzer")
vim.lsp.enable("zls")

vim.diagnostic.config({
	virtual_text = true, -- this make error text show up why tf is it not on by default 😭
	virtual_lines = false,
	update_in_insert = true,
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    vim.keymap.set('n', 'grd', '<cmd>lua vim.lsp.buf.definition()<cr>', { buffer = args.buf })
  end,
})
