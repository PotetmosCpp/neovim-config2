vim.keymap.set("n", "<leader><leader>", vim.cmd.so)
vim.keymap.set("n", "<leader>pv", function()
	vim.cmd("Oil")
end)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set({"n", "v"}, "<leader>d", "\"_d")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ai stuff but it works so who cares
vim.keymap.set("n", "<leader>cc", function()
    local current_cc_value = vim.opt.colorcolumn:get()
    local current_cc_string = ""
    if type(current_cc_value) == 'table' then
        local parts = {}
        for _, v in ipairs(current_cc_value) do
            table.insert(parts, tostring(v))
        end
        current_cc_string = table.concat(parts, ",")
    else
        current_cc_string = tostring(current_cc_value)
    end

    if current_cc_string:find("100") then
        vim.opt.colorcolumn = "0"
    else
        vim.opt.colorcolumn = "100"
    end
end)

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
