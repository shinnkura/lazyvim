return {
  "L3MON4D3/LuaSnip", -- スニペットエンジン
  config = function()
    local luasnip = require("luasnip")
    luasnip.setup({
      history = true, -- スニペットの履歴を保持
      updateevents = "TextChanged,TextChangedI", -- 自動更新
    })
    -- VSCodeのスニペットファイルをロード
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
}
