vim.opt.guicursor = "i-c:blinkon1"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- vim.g.netrw_banner = 0

vim.opt.termguicolors = true

vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.cmd("autocmd FileType html,css,typescriptreact,javascriptreact setlocal tabstop=2")
vim.cmd("autocmd FileType html,css,typescriptreact,javascriptreact setlocal softtabstop=2")
vim.cmd("autocmd FileType html,css,typescriptreact,javascriptreact setlocal shiftwidth=2")
