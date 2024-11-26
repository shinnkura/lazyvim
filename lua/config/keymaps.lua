-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- nvim-cmpの設定
local cmp = require("cmp")

cmp.setup({
  mapping = {
    ["<C-b>"] = nil, -- <C-b> のマッピングを無効化
    ["<C-f>"] = nil, -- <C-f> のマッピングを無効化
    ["<C-p>"] = nil, -- <C-p> のマッピングを無効化
    ["<C-n>"] = nil, -- <C-n> のマッピングを無効化
    ["<C-a>"] = nil, -- <C-a> のマッピングを無効化
    ["<C-e>"] = nil, -- <C-e> のマッピングを無効化
  },
})

-- 自動保存
vim.keymap.set("i", "<ESC>", "<ESC>:w<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-[>", "<C-[>:w<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "jj", "<Esc>:w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR><Esc>", { noremap = true, silent = true })

vim.keymap.set("n", "p", "p:w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "P", "P:w<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "dd", "dd:w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "D", "D:w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "x", "x:w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", ".", ".:w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "u", "u:w<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-r>", "<C-r>:w<CR>", { noremap = true, silent = true })

-- インサートモードでのカーソル移動の設定
vim.keymap.set("i", "<C-b>", "<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-f>", "<Right>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-p>", "<Up>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-n>", "<Down>", { noremap = true, silent = true })
-- Ctrl+aで行頭、Ctrl+eで行末に移動
vim.keymap.set("i", "<C-a>", "<Home>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-e>", "<End>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-d>", "<C-o>dl", { noremap = true, silent = true })
vim.keymap.set("i", "<C-k>", "<C-o>D", { noremap = true, silent = true })

-- カーソル移動の高速化
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.keymap.set("n", "n", "nzzzv", { noremap = true, silent = true })
vim.keymap.set("n", "N", "Nzzzv", { noremap = true, silent = true })

-- ノーマルモードでのカーソル移動
vim.keymap.set("n", "<C-b>", "h", { noremap = true, silent = true })
vim.keymap.set("n", "<C-f>", "l", { noremap = true, silent = true })
vim.keymap.set("n", "<C-p>", "k", { noremap = true, silent = true })
vim.keymap.set("n", "<C-n>", "j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-a>", "0", { noremap = true, silent = true })
vim.keymap.set("n", "<C-e>", "$", { noremap = true, silent = true })

-- ビジュアルモードでのカーソル移動
vim.keymap.set("v", "<C-b>", "h", { noremap = true, silent = true })
vim.keymap.set("v", "<C-f>", "l", { noremap = true, silent = true })
vim.keymap.set("v", "<C-p>", "k", { noremap = true, silent = true })
vim.keymap.set("v", "<C-n>", "j", { noremap = true, silent = true })
vim.keymap.set("v", "<C-a>", "0", { noremap = true, silent = true })
vim.keymap.set("v", "<C-e>", "$", { noremap = true, silent = true })

-- コマンドモードでのカーソル移動
vim.keymap.set("c", "<C-b>", "<Left>", { noremap = true, silent = true })
vim.keymap.set("c", "<C-f>", "<Right>", { noremap = true, silent = true })
vim.keymap.set("c", "<C-a>", "<Home>", { noremap = true, silent = true })
vim.keymap.set("c", "<C-e>", "<End>", { noremap = true, silent = true })

-- 括弧の自動補完
vim.keymap.set("i", "(", "()<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "{", "{}<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "[", "[]<Left>", { noremap = true, silent = true })
vim.keymap.set("i", '"', '""<Left>', { noremap = true, silent = true })
vim.keymap.set("i", "'", "''<Left>", { noremap = true, silent = true })

-- ファイルリロードのショートカット
vim.keymap.set("n", "<leader>r", ":e!<CR>", { noremap = true, silent = true })
