vim.pack.add({
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/akinsho/bufferline.nvim",
})

require("bufferline").setup({
	options = {
		show_buffer_close_icons = false,
	},
})

vim.keymap.set("n", "<leader>tq", vim.cmd.bd)

vim.keymap.set("n", "<leader>t1", function()
	vim.cmd("BufferLineGoToBuffer 1")
end)
vim.keymap.set("n", "<leader>t2", function()
	vim.cmd("BufferLineGoToBuffer 2")
end)
vim.keymap.set("n", "<leader>t3", function()
	vim.cmd("BufferLineGoToBuffer 3")
end)
vim.keymap.set("n", "<leader>t4", function()
	vim.cmd("BufferLineGoToBuffer 4")
end)
vim.keymap.set("n", "<leader>t5", function()
	vim.cmd("BufferLineGoToBuffer 5")
end)
vim.keymap.set("n", "<leader>t6", function()
	vim.cmd("BufferLineGoToBuffer 6")
end)
vim.keymap.set("n", "<leader>t7", function()
	vim.cmd("BufferLineGoToBuffer 7")
end)
vim.keymap.set("n", "<leader>t8", function()
	vim.cmd("BufferLineGoToBuffer 8")
end)
vim.keymap.set("n", "<leader>t9", function()
	vim.cmd("BufferLineGoToBuffer 9")
end)
vim.keymap.set("n", "<leader>t0", function()
	vim.cmd("BufferLineGoToBuffer 10")
end)
