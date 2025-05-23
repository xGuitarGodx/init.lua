local opt, o, g, cmd = vim.opt, vim.o, vim.g, vim.cmd
-- Prompt on unsaved changes to the current file(s) 
o.confirm = true
-- Show line numbers
o.number = true
-- Show relative line numbers
o.relativenumber = true
-- To enable mode shapes, 'Cursor' highlight, and blinking:
opt.guicursor = {
    'n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50',
    'a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor',
    'sm:block-blinkwait175-blinkoff150-blinkon175',
    'i-ci:ver30-iCursor-blinkwait300-blinkoff150-blinkon200'
    }
-- Use system clipboard for copy/paste
g.clipboard = 'wl-copy'
-- Save undo history
o.undofile = true
-- Enable Nerd Font
g.have_nerd_font = true
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
o.ignorecase = true
o.smartcase = true
-- Disable word wrap
o.wrap = false
-- Tab settings
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
-- Keep signcolumn on by default
--vim.o.signcolumn = 'yes'
-- Display signs in the 'number' column
o.signcolumn = 'number'
-- Set colorscheme
cmd.colorscheme('habamax')
-- Define <Leader> mapping
g.mapleader = ' '

if g.neovide then
    -- Put anything you want to happen only in Neovide here
    --vim.print(vim.api.nvim_get_chan_info(vim.g.neovide_channel_id))
    g.neovide_refresh_rate = 144
    g.neovide_fullscreen = true
    g.neovide_hide_mouse_when_typing = true
    g.neovide_cursor_smooth_blink = true
    g.neovide_cursor_vfx_mode = {'pixiedust', 'sonicboom'}
end
