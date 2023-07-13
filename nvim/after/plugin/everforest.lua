require("everforest").setup({
    background = "hard",
    transparent_background_level = 1,
    italics = false,
    disable_italic_comments = false,
    sign_column_background = "none",
    ui_contrast = "low",
    dim_inactive_windows = false,
    diagnostic_text_highlight = false,
    diagnostic_virtual_text = "coloured",
    diagnostic_line_highlight = false,
    spell_foreground = false,
    ---@param highlight_groups Highlights
    ---@param palette Palette
    on_highlights = function(highlight_groups, palette) end,      
})
vim.cmd('colorscheme everforest')
