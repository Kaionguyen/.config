-- Lazynvim configuration
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

local plugins = {
    -- Telescope (fzf)
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },

    -- Icons
    {'nvim-tree/nvim-web-devicons'},

    -- Colorschemes
    {'catppuccin/nvim'},
    {'AlexvZyl/nordic.nvim'},

    -- Dashboard
    {"nvimdev/dashboard-nvim"},

    -- Statusline
    {'nvim-lualine/lualine.nvim'},

    -- HARPOON 2!
    {
        'ThePrimeagen/Harpoon',
        branch = "harpoon2",
        dependencies = {{"nvim-lua/plenary.nvim"}},
    },

    -- Local file history
    {'mbbill/undotree'},

    -- Git integration
    {'tpope/vim-fugitive'},

    -- Syntax highlighting
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},

    -- Context line
    {'nvim-treesitter/nvim-treesitter-context'},

    -- LSP
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    },

    -- Formatting with mason
    {'jose-elias-alvarez/null-ls.nvim'},
    {'jay-babu/mason-null-ls.nvim'},

    -- Block commenting
    {
        'numToStr/Comment.nvim',
        opts = {
        },
        lazy = false,
    },

    -- Copilot
    {'github/copilot.vim'},
}

require("lazy").setup(plugins, {})
