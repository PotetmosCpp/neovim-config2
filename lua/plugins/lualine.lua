return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require('lualine').setup {
			sections = {
				lualine_a = {'mode'},
				--lualine_b = {'branch', 'diff', 'diagnostics'},
				lualine_b = {"diagnostics"},
				lualine_c = { },
				--lualine_x = {'encoding', 'fileformat', 'filetype'},
				--lualine_x = {'progress'},
				lualine_x = { },
				lualine_y = { "filename" },
				--lualine_y = {'location'},
				lualine_z = {"os.date('%H:%M:%S')"}
			},
		}
	end
}
