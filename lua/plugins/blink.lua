vim.pack.add({
	"https://github.com/Saghen/blink.cmp",
})

require("blink.cmp").setup({
	completion = {
		documentation = {
			auto_show = true,
		},
	},
	fuzzy = {
		implementation = "lua",
	},
})
