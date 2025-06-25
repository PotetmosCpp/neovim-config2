return {
	"rebelot/terminal.nvim",
	config = function()
		vim.keymap.set("n", "<leader>tt", vim.cmd.terminal)
	end
}
