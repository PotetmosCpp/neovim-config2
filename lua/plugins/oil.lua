return {
	"stevearc/oil.nvim",
	dependencies = "https://github.com/nvim-tree/nvim-web-devicons",
	config = function()
		require("oil").setup({
			view_options = {
				show_hidden = true
			}
		})
	end
}
