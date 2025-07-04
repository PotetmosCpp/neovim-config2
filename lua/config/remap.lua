vim.keymap.set("n", "<leader><leader>", vim.cmd.so)
vim.keymap.set("n", "<leader>pv", function()
	vim.cmd("Oil")
end)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set({"n", "v"}, "<leader>d", "\"_d")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>tt", vim.cmd.terminal)

--vim.keymap.set({"i", "n"}, "<F5>", "w:\n:!cargo run\n")

--[[vim.keymap.set({"n"}, "<F5>", function()
	--if vim.bo.modified then
		--vim.cmd("wa")
	--end

	if vim.fn.filereadable(vim.fn.getcwd() .. "/makefile") == 1 then
		vim.cmd("!make")
	elseif vim.fn.filereadable(vim.fn.getcwd() .. "/Cargo.toml") == 1 then
		vim.cmd("!cargo run")
	elseif vim.fn.filereadable(vim.fn.getcwd() .. "/build.zig") == 1 then
		vim.cmd("!zig build run")
	elseif vim.fn.filereadable(vim.fn.getcwd() .. "/go.mod") == 1 then
		vim.cmd("!go run src/main.go")
	else
		print("bitch")
	end
end)]]--
