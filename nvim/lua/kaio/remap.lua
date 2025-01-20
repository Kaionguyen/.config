vim.g.mapleader = " "

vim.keymap.set("i", "<C-c>", "<Esc>")

--return to netrw
vim.keymap.set("n", "<leader>nw", vim.cmd.Ex)

--clear search buffer
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")

--move highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--cursor placement
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "G", "Gzz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--register control
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

--Yank to clipboard vs register
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

--replace all instances of word on cursor
vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Create executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--ThePrimeagen told me to
vim.keymap.set("n", "Q", "<nop>")

-- Quickfix
vim.keymap.set("n", "Q", function()
  if vim.fn.empty(vim.fn.filter(vim.fn.getwininfo(), "v:val.quickfix")) == 1 then
    vim.cmd("copen")
  else
    vim.cmd("cclose")
  end
end)

vim.keymap.set("n", "<C-n>", "<cmd>cnext<CR>", { desc = "Next quickfix item" })
vim.keymap.set("n", "<C-p>", "<cmd>cprev<CR>", { desc = "Prev quickfix item" })

-- tmux sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww ~/.local/bin/tmux-sessionizer<CR>")

--Go to packer
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/kaio/lazy.lua<CR>")

--HTML5 boiler plate
vim.keymap.set("n", "<leader>html5", [[<Esc>:set paste<CR>i<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>My HTML5 Boilerplate</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        
    </body>
</html><Esc>:set nopaste<CR>
]])
