-- nnoremap <silent> <C-h> <Cmd>NvimTmuxNavigateLeft<CR>
-- nnoremap <silent> <C-j> <Cmd>NvimTmuxNavigateDown<CR>
-- nnoremap <silent> <C-k> <Cmd>NvimTmuxNavigateUp<CR>
-- nnoremap <silent> <C-l> <Cmd>NvimTmuxNavigateRight<CR>
-- nnoremap <silent> <C-\> <Cmd>NvimTmuxNavigateLastActive<CR>
-- nnoremap <silent> <C-Space> <Cmd>NvimTmuxNavigateNext<CR>

vim.keymap.set('n', '<C-h>', '<Cmd>NvimTmuxNavigateLeft<CR>', { noremap = true })
vim.keymap.set('n', '<C-j>', '<Cmd>NvimTmuxNavigateDown<CR>', { noremap = true })
vim.keymap.set('n', '<C-k>', '<Cmd>NvimTmuxNavigateUp<CR>', { noremap = true })
vim.keymap.set('n', '<C-l>', '<Cmd>NvimTmuxNavigateRight<CR>', { noremap = true })
vim.keymap.set('n', '<C-\\>', '<Cmd>NvimTmuxNavigateLastActive<CR>', { noremap = true })

require'nvim-tmux-navigation'.setup {
    disable_when_zoomed = true -- defaults to false
}
