return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-ui-select.nvim' },
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        { 'nvim-tree/nvim-web-devicons', opts = {} },
    },
    config = function()
        local builtin = require('telescope.builtin')
        local actions = require('telescope.actions')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
        vim.keymap.set('n', '<leader>fp', function() require('telescope.builtin').find_files({ cwd = require('lazy.core.config').options.root }) end, { desc = 'Telescope find plugin files' })
        require('telescope').setup{
            defaults = {
                -- Default configuration for telescope goes here:
                -- config_key = value, 
                mappings =  {
                    i = {
                        -- map actions.which_key to <C-h> (default: <C-/>)
                        -- actions.which_key shows the mappings for your picker,
                        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
                        ['<C-h>'] = 'which_key',
                        ['<esc>'] = actions.close,
                    }
                }
            },
            pickers = {
                -- Default configuration for builtin pickers goes here:
                -- picker_name = {
                --   picker_config_key = value,
                --   ...
                -- }
                -- Now the picker_config_key will be applied every time you call this
                -- builtin picker
                find_files = {
                    theme = 'dropdown',
                    hidden = 'true',
                },
                git_files = {
                    theme = 'dropdown',
                },
                help_tags = {
                    theme = 'dropdown',
                }
            },
            extensions = {
                -- Your extension configuration goes here:
                -- extension_name = {
                --   extension_config_key = value,
                -- }
                -- please take a look at the readme of the extension you want to configure
                ['ui-select'] = {
                    require('telescope.themes').get_dropdown()
                },
            },
        }
        --local telescope = require('telescope')
        --local telescopeConfig = require('telescope.config')
        -- Clone the default Telescope configuration
        --local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }
        -- I want to search hidden/dot files.
        --table.insert(vimgrep_arguments, "--hidden")
        -- I don't want to search in the '.git' directory.
        --table.insert(vimgrep_arguments, "--glob")
        --table.insert(vimgrep_arguments, "!**/.git/*")
        --telescope.setup({
            --defaults = {
                -- 'hidden = true' is not supported in text grep commands.
                --vimgrep_arguments = vimgrep_arguments,
            --},
            --pickers = {
                --find_files = {
                    -- 'hidden = true' will still show the inside of '.git/' as it's not '.gitignore'd.
                    --find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
                --}
            --}
        --})
        require('telescope').load_extension('ui-select')
        require('telescope').load_extension('fzf')
        --require'nvim-web-devicons'.setup { }
    end,
}
