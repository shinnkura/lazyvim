return {
  "sindrets/diffview.nvim", -- diffview.nvim 本体
  dependencies = { "nvim-lua/plenary.nvim" }, -- plenary.nvim を依存として追加
  config = function()
    require("diffview").setup({
      use_icons = true, -- アイコンを有効化
    })

    -- キーマップの設定
    vim.keymap.set("n", "<leader>do", ":DiffviewOpen<CR>", { noremap = true, silent = true }) -- Diffviewを開く
    vim.keymap.set("n", "<leader>dc", ":DiffviewClose<CR>", { noremap = true, silent = true }) -- Diffviewを閉じる
    vim.keymap.set("n", "<leader>dh", ":DiffviewFileHistory<CR>", { noremap = true, silent = true }) -- ファイル履歴を表示
  end,
}
