local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gr', builtin.live_grep, {})
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>cc', builtin.git_commits, {})

require('telescope').setup({
    pickers = {
        find_files = {
            theme = 'dropdown',
        },
        git_files = {
            theme = 'dropdown',
        },
        live_grep = {
            theme = 'dropdown',
        },
        help_tags = {
            theme = 'dropdown',
        },
        git_commits = {
            theme = 'dropdown',
        },
    },
    extensions = {
        fzf = {}
    },
})

require('telescope').load_extension('fzf')
