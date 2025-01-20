require('nordic').setup ({
    -- This callback can be used to override the colors used in the palette.
    on_palette = function(palette)
        palette.gray4 = palette.gray5
        return palette
    end,
    -- Enable bold keywords.
    bold_keywords = true,
    -- Enable italic comments.
    italic_comments = false,
    -- Enable general editor background transparency.
    transparent = {
        bg = true,
        float = true,
    },
    -- Enable brighter float border.
    bright_border = true,
    -- Reduce the overall amount of blue in the theme (diverges from base Nord).
    reduced_blue = false,
    -- Swap the dark background with the normal one.
    swap_backgrounds = false,
    -- Override the styling of any highlight group.
    -- override = {},
    -- Cursorline options.  Also includes visual/selection.
    cursorline = {
        -- Bold font in cursorline.
        bold = false,
        -- Bold cursorline number.
        bold_number = false,
        -- Avialable styles: 'dark', 'light'.
        theme = 'light',
        -- Blending the cursorline bg with the buffer bg.
        blend = 0.7,
    },
    telescope = {
        -- Available styles: `classic`, `flat`.
        style = 'classic',
    },
    ts_context = {
        -- Enables dark background for treesitter-context window
        dark_background = true,
    }
})

-- setup must be called before loading
vim.cmd('colorscheme nordic')
