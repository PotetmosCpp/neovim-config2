vim.lsp.config["clangd"] = {
	cmd = { "clangd" },
	filetypes = { "c", "cpp" }
}
--[[vim.lsp.config["rust-analyzer"] = {
	cmd = { "rust-analyzer" },
	filetypes = { "rs", "rust" }
}]]--

vim.lsp.enable("clangd")

vim.diagnostic.config({
	virtual_text = true, -- this make error text show up why tf is it not on by default 😭
	virtual_lines = false,
	update_in_insert = true,
})

--vim.diagnostic.enable(); -- this shit hella weird find out why shit aint working thanks 

-- gay fucking shit dude what
vim.api.nvim_create_autocmd("FileType", {
	pattern = "rust",
	callback = function()
		vim.lsp.start({
			name = "rust-analyzer",
			cmd = { "rust-analyzer" }
			--root_dir = vim.fs.dirname(vim.fs.find({ "Cargo.toml", ".git" }, { upward = true })[1]),
		})
	end,
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    vim.keymap.set('n', 'grd', '<cmd>lua vim.lsp.buf.definition()<cr>', { buffer = args.buf })
  end,
})
