-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require('neoterm').setup({
    clear_on_run = true,
    position = 'fullscreen',
    noinsert = false,
    width = 0.5,
    height = 1,
})

if vim.g.neovide then
    vim.g.neovide_cursor_vfx_mode = ""
    vim.g.neovide_cursor_smooth_blink = false
    vim.g.neovide_cursor_trail_size = 0.0
    vim.g.neovide_cursor_animate_command_line = false
    vim.g.neovide_cursor_animation_length = 0.0
    vim.g.neovide_scale_factor = 0.9
end

vim.filetype.add({
  extension = {
    h = "c",
    hpp = "cpp",
  },
})

vim.cmd("colorscheme tokyonight")
