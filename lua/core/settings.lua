vim.o.clipboard = "unnamedplus"

vim.cmd('highlight Normal     ctermbg=NONE guibg=NONE')
vim.cmd('highlight LineNr     ctermbg=NONE guibg=NONE')
vim.cmd('highlight SignColumn ctermbg=NONE guibg=NONE')

vim.cmd('filetype plugin on')
vim.cmd('filetype on')


vim.opt.path = vim.opt.path + "**"

vim.opt.wildmenu = true
vim.opt.wildmode = {"longest", "list", "full"}
vim.opt.wildignore = vim.opt.wildignore + "*.git/*"

-- Load project settings
vim.opt.secure = true
vim.opt.exrc = true

-- folding
vim.opt.foldmethod = "indent"
vim.opt.foldenable = true
vim.opt.foldlevel = 100

-- Fix splitting
vim.opt.splitright = true

-- Autoread files if they were changed in other editor
vim.opt.autoread = true

vim.opt.cursorline = true
vim.cmd("highlight CursorLine guibg=#303000 ctermbg=234")
vim.cmd("hi cursorline cterm=none term=none")

vim.opt.cursorcolumn = true
vim.cmd("highlight CursorColumn guibg=none blend=50")

-- Max line threshold
vim.opt.colorcolumn = {90}
vim.cmd("highlight ColorColumn ctermbg=NONE")

-- set ttyfast
vim.opt.swapfile = false
vim.opt.backupdir = "/Users/yuriy/.cache/nvim"

-- Do not try to autoindent on paste
-- NOTE: this flas is not switched because it doesn't allow to work snippets
-- set paste noai

vim.opt.listchars = "tab:>-"
vim.opt.list = true
vim.opt.scrolloff = 7
vim.opt.backspace = "indent,eol,start"

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.fileformat = "unix"
