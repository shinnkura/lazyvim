return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- add a keymap to browse plugin files
    -- stylua: ignore
    {
      "<leader>fp",
      function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
      desc = "Find Plugin File",
    },
    -- Telescopeの設定
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files", noremap = true, silent = true },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep", noremap = true, silent = true },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffers", noremap = true, silent = true },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find Help Tags", noremap = true, silent = true },
  },
  -- change some options
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" }, -- 検索バーを上部に表示
      sorting_strategy = "ascending", -- 検索結果を上から表示
      winblend = 0,
    },
  },
}
