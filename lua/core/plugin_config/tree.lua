require("nvim-tree").setup({
    view = {
        adaptive_size = true,
        side = "left",
        number = true,
        relativenumber = true,
    },
    renderer = {
        add_trailing = true,
    },
    update_focused_file = {
        enable = true,
    },
    filters = {
        dotfiles = false,
        custom = {'.idea', '__pycache__', '.DS_Store'},
        exclude = {},
    },
    git = {
        enable = true,
        ignore = false,
        timeout = 400,
    },
    filesystem_watchers = {
        enable = true,
        --    interval = 100,
        debounce_delay = 50,
    },
})

vim.keymap.set("n", "<leader>'", ":NvimTreeToggle<cr>")

