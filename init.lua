-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- キーマップの設定は遅延ロードに変更する
vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    require("config.keymaps")
  end,
})

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

-- LSP設定
require("lspconfig").intelephense.setup({
  on_attach = function(client, bufnr)
    -- キーマッピングの設定
    local opts = { noremap = true, silent = true }
    local keymap = vim.api.nvim_buf_set_keymap

    -- 定義にジャンプ (関数の定義や宣言に移動)
    keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)

    -- 他の便利なLSPショートカット
    keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
    keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  end,
})
