-- Prompt on unsaved changes to the current file(s) 
vim.o.confirm = true
-- Show line numbers
vim.o.number = true
-- Show relative line numbers
vim.o.relativenumber = true
-- To enable mode shapes, 'Cursor' highlight, and blinking:
vim.opt.guicursor = {
    'n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50',
    'a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor',
    'sm:block-blinkwait175-blinkoff150-blinkon175',
    'i-ci:ver30-iCursor-blinkwait300-blinkoff150-blinkon200'
    }
-- Use system clipboard for copy/paste
vim.g.clipboard = 'wl-copy'
-- Save undo history
vim.o.undofile = true
-- Enable Nerd Font
vim.g.have_nerd_font = true
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true
-- Disable word wrap
vim.o.wrap = false
-- Tab settings
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
-- Keep signcolumn on by default
--vim.o.signcolumn = 'yes'
-- Display signs in the 'number' column
vim.o.signcolumn = "number"
-- Set colorscheme
vim.cmd.colorscheme("habamax")
-- Define <Leader> mapping
vim.g.mapleader = " "

if vim.g.neovide then
    -- Put anything you want to happen only in Neovide here
    --vim.print(vim.api.nvim_get_chan_info(vim.g.neovide_channel_id))
    vim.g.neovide_refresh_rate = 144
    vim.g.neovide_fullscreen = true
    vim.g.neovide_hide_mouse_when_typing = true
    vim.g.neovide_cursor_smooth_blink = true
    vim.g.neovide_cursor_vfx_mode = {"pixiedust", "sonicboom"}
end
