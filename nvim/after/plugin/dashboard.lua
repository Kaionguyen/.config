local dashboard = require('dashboard')

NEOVIM = [[
      ___           ___           ___                                     ___     
     /\  \         /\__\         /\  \          ___                      /\  \    
     \:\  \       /:/ _/_       /::\  \        /\  \        ___         |::\  \   
      \:\  \     /:/ /\__\     /:/\:\  \       \:\  \      /\__\        |:|:\  \  
  _____\:\  \   /:/ /:/ _/_   /:/  \:\  \       \:\  \    /:/__/      __|:|\:\  \ 
 /::::::::\__\ /:/_/:/ /\__\ /:/__/ \:\__\  ___  \:\__\  /::\  \     /::::|_\:\__\
 \:\~~\~~\/__/ \:\/:/ /:/  / \:\  \ /:/  / /\  \ |:|  |  \/\:\  \__  \:\~~\  \/__/
  \:\  \        \::/_/:/  /   \:\  /:/  /  \:\  \|:|  |   ~~\:\/\__\  \:\  \      
   \:\  \        \:\/:/  /     \:\/:/  /    \:\__|:|__|      \::/  /   \:\  \     
    \:\__\        \::/  /       \::/  /      \::::/__/       /:/  /     \:\__\    
     \/__/         \/__/         \/__/        ~~~~           \/__/       \/__/    
]]



NEOVIM = string.rep("\n", 8) .. NEOVIM .. "\n\n"

dashboard.setup({
    theme = "doom",
    config = {
        header = vim.split(NEOVIM, "\n"),
        center = {
            {
                action = "Telescope find_files",
                desc = " Find File",
                key = "f"
            },
            {
                action = vim.cmd.Ex,
                desc = " File Explorer",
                key = "e"
            },
            {
                action = "Telescope live_grep",
                desc = " Live Grep",
                key = "g"
            },
            {
                action = "qa",
                desc = " Quit",
                key = "q"
            },
        },
        footer = {
        },
    }
})

