vim.g.mapleader = ' '

-- vim.keymap.set("n", "<C-h>", "<C-w>h")
-- vim.keymap.set("n", "<C-j>", "<C-w>j")
-- vim.keymap.set("n", "<C-k>", "<C-w>k")
-- vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "<leader>h", ":split<Space>")
vim.keymap.set("n", "<leader>v", ":vsplit<Space>")
vim.keymap.set("n", "<leader>m", ":make -C sandbox/ vim-run<CR>")
vim.keymap.set("n", "<leader>l", ":make -C sandbox/ lint<CR>")
vim.keymap.set("n", "<leader>t", ":make -C sandbox/ test<CR>")
vim.keymap.set("n", "<leader>b", ":b#<CR>")

vim.keymap.set("i", "jk", "<esc>")

vim.keymap.set("x", "<leader>p", "\"_dP", { noremap = true })

-- imap <expr> <Tab> snippy#can_expand_or_advance() ? '<Plug>(snippy-expand-or-advance)' : '<Tab>'
-- imap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'
-- smap <expr> <Tab> snippy#can_jump(1) ? '<Plug>(snippy-next)' : '<Tab>'
-- smap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'
-- xmap <Tab> <Plug>(snippy-cut-text)

