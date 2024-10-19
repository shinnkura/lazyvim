return {
  "onsails/lspkind-nvim",
  config = function()
    local lspkind = require("lspkind")
    require("cmp").setup({
      formatting = {
        format = lspkind.cmp_format({
          mode = "symbol_text", -- 'text', 'symbol', 'symbol_text'のどれか
          maxwidth = 50, -- ポップアップの幅
          ellipsis_char = "...", -- 長いテキストは省略記号
        }),
      },
    })
  end,
}
