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
