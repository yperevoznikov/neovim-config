call plug#begin('~/.config/nvim/plugins')
    Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'ibhagwan/fzf-lua', {'branch': 'main'}
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'windwp/nvim-autopairs'

"    Plug 'Mofiqul/vscode.nvim' " VSCode theme https://github.com/Mofiqul/vscode.nvim
    Plug 'morhetz/gruvbox' " Theme https://github.com/morhetz/gruvbox

    Plug 'norcalli/nvim-colorizer.lua' " Shows HEX colors in code https://github.com/norcalli/nvim-colorizer.lua
    Plug 'terrortylor/nvim-comment'

    Plug 'tpope/vim-fugitive'

    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'
    Plug 'neovim/nvim-lspconfig' " https://github.com/neovim/nvim-lspconfig & https://neovim.io/doc/lsp/
    " Plug 'nvim-treesitter/nvim-treesitter'

    Plug 'nvim-lua/plenary.nvim' " This adds some async thing, required for Telescope
    Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }

    " Snippets
    Plug 'dcampos/nvim-snippy'
    Plug 'honza/vim-snippets'
call plug#end()

set nocompatible

set termguicolors

" Set theme and also make background transparent
colorscheme gruvbox
highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE

filetype plugin on
filetype on

let mapleader = ' '

syntax on
set termguicolors

set path+=**

set wildmenu
set wildmode=longest,list,full
set wildignore+=*.git/*

" folding
set foldmethod=indent
set nofoldenable

" Fix splitting
set splitbelow splitright

" Autoread files if they were changed in other editor
set autoread

set cursorline
highlight CursorLine guibg=#303000 ctermbg=234
hi cursorline cterm=none term=none

set cursorcolumn
highlight CursorColumn guibg=none blend=50

" Max line threshold
set colorcolumn=90
highlight ColorColumn ctermbg=NONE

" set ttyfast
set noswapfile
set backupdir=~/.cache/nvim

" Do not try to autoindent on paste
" NOTE: this flas is not switched because it doesn't allow to work snippets
" set paste noai

set listchars=tab:>-
set list
set scrolloff=7
set backspace=indent,eol,start

set number relativenumber
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set fileformat=unix

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nnoremap <leader>h :split<Space>
nnoremap <leader>v :vsplit<Space>
nnoremap <leader>m :make -C sandbox/ vim-run<CR>
nnoremap <leader>l :make -C sandbox/ lint<CR>
nnoremap <leader>t :make -C sandbox/ test<CR>
nnoremap <leader>b :b#<CR>

inoremap jk <esc>

imap <expr> <Tab> snippy#can_expand_or_advance() ? '<Plug>(snippy-expand-or-advance)' : '<Tab>'
imap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'
smap <expr> <Tab> snippy#can_jump(1) ? '<Plug>(snippy-next)' : '<Tab>'
smap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'
xmap <Tab> <Plug>(snippy-cut-text)

lua require('main')


