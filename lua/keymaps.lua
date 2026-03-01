vim.keymap.set("n", "<leader>-", vim.cmd.Oi)
vim.keymap.set("n", "<leader><leader>", vim.cmd.so)
vim.keymap.set("n", "<leader>t", vim.cmd.te)
vim.keymap.set("n", "<leader>u", vim.cmd.Undotree)

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

vim.keymap.set("n", "gre", vim.diagnostic.open_float)
vim.keymap.set("n", "grd", vim.lsp.buf.definition)
