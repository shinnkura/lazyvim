-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("keymaps")

-- リーダーキーの設定
vim.g.mapleader = " "

-- パッケージ管理
require("lazy").setup({
  { "ntk148v/vim-horizon" },
  { "preservim/nerdtree" },
  { "junegunn/fzf", run = "fzf#install()" },
  { "neoclide/coc.nvim", branch = "release" },
  { "vim-airline/vim-airline" },
  { "nvim-lua/plenary.nvim" },
  { "nvim-telescope/telescope.nvim", tag = "0.1.8" },
  { "echasnovski/mini.nvim", version = "*" },
})

-- カラー設定
vim.o.termguicolors = true
-- vim.cmd("colorscheme horizon")

-- Lightline/Airlineの設定
vim.g.lightline = { colorscheme = "horizon" }
vim.g["airline#extensions#tabline#enabled"] = 1
vim.g["airline#extensions#tabline#formatter"] = "unique_tail"

-- NERDTreeの設定
vim.api.nvim_set_keymap("n", "<leader>n", ":NERDTreeFocus<CR>", { noremap = true, silent = true })
vim.cmd([[
  autocmd FileType nerdtree nnoremap <buffer> <C-n> j
  autocmd FileType nerdtree nnoremap <buffer> <C-p> k
]])

-- Zshの設定
vim.o.shell = "/bin/zsh"

-- 便利な設定
vim.o.textwidth = 0
vim.o.autoindent = true
vim.o.clipboard = "unnamedplus"
vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")

-- 見た目設定
vim.o.encoding = "utf-8"
vim.o.number = true
vim.o.virtualedit = "onemore"
vim.o.smartindent = true
vim.o.visualbell = true
vim.o.showmatch = true
vim.o.laststatus = 2
vim.o.wildmode = "list:longest"

-- タブ設定
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.list = true
vim.o.listchars = "tab:▸\\-"

-- 検索設定
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.wrapscan = true
vim.o.hlsearch = true

vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Esc><Esc>", ":nohlsearch<CR><Esc>", { noremap = true, silent = true })

-- カーソル移動の高速化
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "n", "nzzzv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "N", "Nzzzv", { noremap = true, silent = true })

-- 括弧の自動補完
vim.api.nvim_set_keymap("i", "(", "()<Left>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "{", "{}<Left>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "[", "[]<Left>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", '"', '""<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "'", "''<Left>", { noremap = true, silent = true })

-- Telescopeの設定
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { noremap = true, silent = true })
