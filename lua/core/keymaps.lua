vim.g.mapleader = ' '

vim.keymap.set("n", "<leader>h", ":split<Space>")
vim.keymap.set("n", "<leader>v", ":vsplit<Space>")
vim.keymap.set("n", "<leader>m", ":make -C sandbox/ vim-run<CR>")
vim.keymap.set("n", "<leader>l", ":make -C sandbox/ lint<CR>")
vim.keymap.set("n", "<leader>t", ":make -C sandbox/ test<CR>")

-- Go to last buffer
vim.keymap.set("n", "<leader>bb", ":b#<enter>")
vim.keymap.set("n", "<leader>bn", ":bnext<enter>")
vim.keymap.set("n", "<leader>bp", ":bprev<enter>")

vim.keymap.set("i", "jj", "<esc>")

-- vim.keymap.set("x", "<leader>p", "\"_dP", { noremap = true })

