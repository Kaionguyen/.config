local custom_catppuccin = require'lualine.themes.catppuccin'
local custom_nordic = require'lualine.themes.nordic'

-- Change the background of lualine_c section for normal mode
custom_catppuccin.normal.c.bg = '#1e1e2e'
custom_catppuccin.normal.b.bg = '#313244'

custom_nordic.normal.c.bg = '#222630'

require ("lualine").setup({
    options = {
        -- theme = custom_catppuccin,
        theme = custom_nordic,
    }
})
