local telescope = require('telescope')
local builtin = require('telescope.builtin')
local lga_actions = require("telescope-live-grep-args.actions")
require('telescope-makefile')


telescope.setup({
    defaults = {
        previewer = true,
        file_ignore_patterns = { "node_modules" },
        layout_position = "horizontal",
        layout_config = {
            horizontal = {
                prompt_position = "top"
            }
        }
    },
    extensions = {
        live_grep_args = {
            auto_quoting = true, -- enable/disable auto-quoting
            -- define mappings, e.g.
            mappings = { -- extend mappings
                 i = {
                     ["<C-k>"] = lga_actions.quote_prompt(),
                     ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
                 },
            },
            -- ... also accepts theme settings, for example:
            -- theme = "dropdown", -- use dropdown theme
            -- theme = { }, -- use own theme spec
            -- layout_config = { mirror=true }, -- mirror preview pane
        }
    }
})

require('telescope-makefile').setup({
  -- The path where to search the makefile in the priority order
  makefile_priority = { 'sandbox', '.' },
  default_target = '[DEFAULT]', -- nil or string : Name of the default target | nil will disable the default_target
  make_bin = "/usr/local/opt/make/bin/gmake", -- Custom makefile binary path, uses system make by def
})

telescope.load_extension("live_grep_args")
telescope.load_extension('make')
telescope.load_extension('harpoon')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fg', ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fc', builtin.colorscheme, {})
vim.keymap.set('n', '<leader>f:', builtin.registers, {})
vim.keymap.set('n', '<leader>fm', ":Telescope make<CR>", {})

