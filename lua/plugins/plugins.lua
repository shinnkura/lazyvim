return {
  -- その他のプラグインのリスト
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<D-j>]],
        size = 20,
        direction = "vertical",
      })
    end,
  },
}
