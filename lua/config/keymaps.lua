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

vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Esc><Esc>", ":nohlsearch<CR><Esc>", { noremap = true, silent = true })

-- インサートモードでのカーソル移動の設定
vim.api.nvim_set_keymap("i", "<C-b>", "<Left>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-f>", "<Right>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-p>", "<Up>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-n>", "<Down>", { noremap = true, silent = true })
-- Ctrl+aで行頭、Ctrl+eで行末に移動
vim.api.nvim_set_keymap("i", "<C-a>", "<Home>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-e>", "<End>", { noremap = true, silent = true })

-- カーソル移動の高速化
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "n", "nzzzv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "N", "Nzzzv", { noremap = true, silent = true })

-- ノーマルモードでのカーソル移動
vim.api.nvim_set_keymap("n", "<C-b>", "h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-f>", "l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-p>", "k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-n>", "j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-a>", "0", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-e>", "$", { noremap = true, silent = true })

-- ビジュアルモードでのカーソル移動
vim.api.nvim_set_keymap("v", "<C-b>", "h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-f>", "l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-p>", "k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-n>", "j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-a>", "0", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-e>", "$", { noremap = true, silent = true })

-- コマンドモードでのカーソル移動
vim.api.nvim_set_keymap("c", "<C-b>", "<Left>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("c", "<C-f>", "<Right>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("c", "<C-a>", "<Home>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("c", "<C-e>", "<End>", { noremap = true, silent = true })

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
