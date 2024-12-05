require('nordic').setup ({
    -- This callback can be used to override the colors used in the palette.
    on_palette = function(palette) 
        palette.gray4 = palette.gray5
        palette.gray2 = palette.gray5
        return palette
    end,
    -- Enable bold keywords.
    bold_keywords = true,
    -- Enable italic comments.
    italic_comments = false,
    -- Enable general editor background transparency.
    transparent_bg = true,
    -- Enable brighter float border.
    bright_border = true,
    -- Reduce the overall amount of blue in the theme (diverges from base Nord).
    reduced_blue = false,
    -- Swap the dark background with the normal one.
    swap_backgrounds = false,
    -- Override the styling of any highlight group.
    override = {},
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

require('catppuccin').setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true, -- disables setting the background color.
    show_end_of_buffer = true, -- shows the '~' characters after the end of buffers
    term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = function (colors)
        return {
            LineNr = { fg = colors.overlay2 },
        }
    end,

    integrations = {
        cmp = true,
        nvimtree = true,
        treesitter = true,
        harpoon = true,
        treesitter_context = true,
        mason = true,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
-- vim.cmd('colorscheme catppuccin')
vim.cmd('colorscheme nordic')
