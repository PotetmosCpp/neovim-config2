return {
	{
		"Mofiqul/vscode.nvim",
		config = function()
			--vim.cmd("colorscheme vscode")
		end
	},
	--[[{
		"projekt0n/github-nvim-theme",
		config = function()
			--vim.cmd("colorscheme github_dark")
		end
	},
	{
		"olimorris/onedarkpro.nvim",
		config = function()
			--vim.cmd("colorscheme onedark")
		end
	},]]--
	{
		"rebelot/kanagawa.nvim",
		config = function()
			require("kanagawa").setup({
				transparent = true,
				colors = {
					theme = {
						all = {
							ui = {
								bg_gutter = "none"
							}
						}
					}
				},

				overrides = function(colors)
					local theme = colors.theme
					return {
						--TelescopeTitle = { fg = theme.ui.special, bold = true },
						--TelescopePromptNormal = { bg = theme.ui.bg_p1 },
						--TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
						--TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
						--TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
						--TelescopePreviewNormal = { bg = theme.ui.bg_dim },
						--TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
						TelescopePromptBorder = { bg = "none" },
						TelescopeResultsBorder = { bg = "none" },
						TelescopePreviewBorder = { bg = "none" },
					}
				end
			})

			vim.cmd("colorscheme kanagawa")
		end
	}
	--[[{
		"rose-pine/neovim",
	},]]--
}
