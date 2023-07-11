--return to netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--Window/tab control
vim.keymap.set("n", "<leader>wv", "<C-w>v") -- window vertical 
vim.keymap.set("n", "<leader>wh", "<C-w>s") -- window horizontal 
vim.keymap.set("n", "<leader>we", "<C-w>=") -- window equal width
vim.keymap.set("n", "<leader>wx", ":close<CR>") -- window exit

vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- exit tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab

--clear search buffer
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

--move highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--buffer control
vim.keymap.set("x", "<leader>p", "\"_dP")

--replace all instances of word on cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--ThePrimagen told me to
vim.keymap.set("n", "Q", "<nop>")
