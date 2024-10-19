return {
  "nvim-treesitter/nvim-treesitter", -- Treesitter 本体
  build = ":TSUpdate", -- インストール後に更新を行う
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects", -- 追加のテキストオブジェクト操作
  },
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { -- 自動インストールする言語
        "lua",
        "javascript",
        "python",
        "go",
        "php",
        "html",
        "css",
        "json",
      },
      highlight = {
        enable = true, -- シンタックスハイライトを有効化
      },
      indent = {
        enable = true, -- 自動インデント機能を有効化
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn", -- 初期選択
          node_incremental = "grn", -- ノードを増やして選択
          scope_incremental = "grc", -- スコープを増やして選択
          node_decremental = "grm", -- ノード選択を減らす
        },
      },
      textobjects = { -- テキストオブジェクト設定
        select = {
          enable = true,
          lookahead = true, -- 次のものを自動的に選択する
          keymaps = {
            ["af"] = "@function.outer", -- 関数全体を選択
            ["if"] = "@function.inner", -- 関数の内部を選択
            ["ac"] = "@class.outer", -- クラス全体を選択
            ["ic"] = "@class.inner", -- クラスの内部を選択
          },
        },
      },
    })
  end,
}
