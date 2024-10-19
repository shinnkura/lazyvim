-- lua/plugins/go.lua
return {
  {
    "fatih/vim-go",
    config = function()
      vim.g.go_fmt_command = "goimports"
      vim.g.go_auto_type_info = 1
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").gopls.setup({
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
            },
            staticcheck = true,
          },
        },
      })
    end,
  },
}
