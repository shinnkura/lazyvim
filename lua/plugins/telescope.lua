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
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files({ no_ignore = true, hidden = true })
      end,
      desc = "Find Files",
    },
    { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Live Grep" },
    { "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "Find Buffers" },
    { "<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "Find Help Tags" },
  },
  -- change some options
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" }, -- 検索バーを上部に表示
      sorting_strategy = "ascending", -- 検索結果を上から表示
      winblend = 0,
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--no-ignore", -- `.gitignore` を無視しない
        "--glob=!node_modules/*", -- `node_modules` を除外
        "--glob=!.next/*", -- Next.jsのビルド結果を除外
        "--glob=!dist/*", -- カスタムビルドフォルダを除外
        "--glob=!*.log", -- ログファイルを除外
        "--glob=!vendor/*", -- Laravelの `vendor` を除外
        "--glob=!storage/framework/*", -- Laravelキャッシュを除外
      },
      file_ignore_patterns = {},
    },
  },
}
