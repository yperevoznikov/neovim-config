-- Ref: https://dev.to/vonheikemen/neovim-using-vim-plug-in-lua-3oom
--      ^ How to use Plug in vim
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugins')

-- 
-- Themes
--
--Plug 'Mofiqul/vscode.nvim' " VSCode theme https://github.com/Mofiqul/vscode.nvim
Plug('ellisonleao/gruvbox.nvim') -- Theme https://github.com/ellisonleao/gruvbox.nvim
--Plug('EdenEast/nightfox.nvim') -- Theme https://github.com/EdenEast/nightfox.nvim

-- Nvim Tree + icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

-- Fzf
-- Plug('ibhagwan/fzf-lua', {branch = 'main'})

-- Telescope
Plug('nvim-lua/plenary.nvim') -- This adds some async thing, required for Telescope
Plug('nvim-telescope/telescope.nvim', {branch = '0.1.x'})
Plug("nvim-telescope/telescope-live-grep-args.nvim") -- Add arguments to live grep search
Plug('akinsho/toggleterm.nvim', {tag = '*'}) -- this is required by telescope makefile

-- This plugin in for telescope to work with make but there were a bug in the plugin
-- so it couldn't work with my env, it couldn't work with my make program,
-- there were not applied fix (PR) on github which i got which i installed.
-- TODO: in future need to back to official plugin release
--
-- Plug("ptethng/telescope-makefile", {branch = 'de-passage:fix_gnu_detection_and_nil_merge'}) -- Support make files
Plug("de-passage/telescope-makefile") -- Support make files

-- Harpoon
Plug('ThePrimeagen/harpoon')

-- Lualine
Plug('nvim-lualine/lualine.nvim')

-- Autopairs
Plug('windwp/nvim-autopairs')

-- Comments
Plug 'terrortylor/nvim-comment'

-- Auto completion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'

-- Snippets
-- Plug 'dcampos/nvim-snippy'
-- Plug 'honza/vim-snippets'

-- Git
-- Plug('tpope/vim-fugitive')
Plug('lewis6991/gitsigns.nvim')

-- Lsp
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig' -- https://github.com/neovim/nvim-lspconfig & https://neovim.io/doc/lsp/
Plug 'nvim-treesitter/nvim-treesitter'

-- Visual things
Plug('lukas-reineke/indent-blankline.nvim')

-- Navigation between vim and tmux
Plug('alexghergh/nvim-tmux-navigation')

-- Github's Copilot
Plug('github/copilot.vim')

-- Local config
-- TODO: Plugin says this functionality is already in nvim 0.9.* 
--       so when homebrew updates formulae - need to try to use it natively
Plug('https://github.com/MunifTanjim/exrc.nvim')

vim.call('plug#end')

