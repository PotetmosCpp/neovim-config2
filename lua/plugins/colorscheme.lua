vim.pack.add({
	"https://github.com/catppuccin/nvim",
	"https://github.com/RRethy/base16-nvim",
})

require("catppuccin").setup({
	flavour = "mocha",
	--[[transparent_background = true,
	float = {
		transparent = true,
	},]]--
})

--vim.cmd("colorscheme base16")
vim.cmd("colo catppuccin")
