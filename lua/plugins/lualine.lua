return {
	"nvim-lualine/lualine.nvim",
	config = function()
		-- thanks gemini lol
		local function show_macro_recording()
			local recording_register = vim.fn.reg_recording()
			if recording_register == "" then
				return "" -- Not recording, so return an empty string to hide the component
			else
				return "Recording @" .. recording_register
			end
		end

		require('lualine').setup {
			sections = {
				lualine_a = {'mode'},
				--lualine_b = {'branch', 'diff', 'diagnostics'},
				lualine_b = {"diagnostics"},
				lualine_c = { {
					show_macro_recording,
					color = { fg = "#ff9e64" },
				} },
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
