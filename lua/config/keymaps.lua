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

-- インサートモードでのカーソル移動の設定
vim.api.nvim_set_keymap("i", "<C-b>", "<Left>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-f>", "<Right>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-p>", "<Up>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-n>", "<Down>", { noremap = true, silent = true })
-- Ctrl+aで行頭、Ctrl+eで行末に移動
vim.api.nvim_set_keymap("i", "<C-a>", "<Home>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-e>", "<End>", { noremap = true, silent = true })
