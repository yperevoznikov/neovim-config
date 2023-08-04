require("harpoon").setup({
    menu = {
        width = vim.api.nvim_win_get_width(0) - 50,
    }
})

vim.keymap.set('n', '<leader>ia', ":lua require('harpoon.mark').add_file()<CR>")
vim.keymap.set('n', '<leader>ii', ":lua require('harpoon.ui').toggle_quick_menu()<CR>")
vim.keymap.set('n', '<leader>i1', ":lua require('harpoon.ui').nav_file(1)<CR>")
vim.keymap.set('n', '<leader>i2', ":lua require('harpoon.ui').nav_file(2)<CR>")
vim.keymap.set('n', '<leader>i3', ":lua require('harpoon.ui').nav_file(3)<CR>")
vim.keymap.set('n', '<leader>i4', ":lua require('harpoon.ui').nav_file(4)<CR>")
