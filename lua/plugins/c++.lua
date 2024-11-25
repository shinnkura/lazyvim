return {
  -- MasonプラグインでLSPを管理
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  -- LSP設定
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      -- clangd (C++ LSPサーバー) のセットアップ
      lspconfig.clangd.setup({
        cmd = { "clangd" }, -- 必要に応じてclangdのパスを指定
        filetypes = { "cpp", "c" },
        root_dir = lspconfig.util.root_pattern(".git", "compile_commands.json", "compile_flags.txt"),
      })
    end,
  },
}
