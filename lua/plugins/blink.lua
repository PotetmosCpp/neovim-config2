vim.pack.add({
	"https://github.com/saghen/blink.lib",
	"https://github.com/Saghen/blink.cmp",
})

local cmp = require("blink.cmp")

cmp.build():wait(60000)
cmp.setup()
