vim.pack.add({
	"https://github.com/nvim-treesitter/nvim-treesitter",
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"c",
		"cpp",
		"rust",
		"python",
	},
	callback = function()
		vim.treesitter.start()
	end,
})
