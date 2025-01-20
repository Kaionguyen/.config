local custom_nordic = require'lualine.themes.nordic'

custom_nordic.normal.c.bg = '#222630'

require ("lualine").setup({
    options = {
        theme = custom_nordic,
    }
})
