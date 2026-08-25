vim.pack.add({
	"https://www.github.com/nvim-lua/plenary.nvim",
	"https://github.com/olimorris/codecompanion.nvim",
})

require("codecompanion").setup({
	interactions = {
		chat = {
			adapter = {
				name = "ollama",
				model = "qwen3.5:4b",
			},
		},
		inline = {
			adapter = {
				name = "ollama",
				model = "qwen3.5:4b",
			},
		},
		cmd = {
			adapter = {
				name = "ollama",
				model = "qwen3.5:4b",
			},
		},
		background = {
			adapter = {
				name = "ollama",
				model = "qwen3.5:4b",
			},
		},
	},
})

vim.keymap.set("v", "<leader>ai", ":CodeCompanion ")
vim.keymap.set("n", "<leader>ac", vim.cmd.CodeCompanionChat)
