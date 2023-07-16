local custom_catppuccin = require'lualine.themes.catppuccin'

-- Change the background of lualine_c section for normal mode
custom_catppuccin.normal.c.bg = '#333333'


require ("lualine").setup({
    options = {
        theme = custom_catppuccin,
    }
})
