-- Open netrw, currently using oil by default
--vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
--

-- Prime's keymaps for moving highlighted text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Prime's keymaps to keep cursor in the middle while half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u", "<C-u>zz")

-- Prime's keymaps to keep cursor in the middle while inc searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Prime's kemap to paste over highlight, sends overwritten highlight to void register
--vim.keymap.set("x", "<leader>p", '"_dp')

-- Prime's keymap to delete to void register
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

-- Copy to system clipboard +y ty reddit
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Source line and whole file for applying config without restart
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

-- Toggle vim diagnostics
vim.keymap.set("n", "<leader>tD", function()
  vim.diagnostic.config({ virtual_text = not vim.diagnostic.config().virtual_text })
end, { desc = "Enable Diagnostics" })

-- Open diagnostic float
vim.keymap.set("n", "<leader>td", vim.diagnostic.open_float, { desc = "Show Diagnostics" })

-- reopen alpha nvim
vim.keymap.set("n", "<leader>pa", "<cmd>Alpha<CR>")

-- toggle neo-tree
vim.keymap.set("n", "<leader>pt", "<Cmd>Neotree toggle<CR>")
