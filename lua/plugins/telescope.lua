return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
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
        "--threads=4",
        "--glob=!node_modules/*", -- `node_modules` を除外
        "--glob=!.next/*", -- Next.jsのビルド結果を除外
        "--glob=!dist/*", -- カスタムビルドフォルダを除外
        "--glob=!*.log", -- ログファイルを除外
        "--glob=!vendor/*", -- Laravelの `vendor` を除外
        "--glob=!storage/*", -- Laravelキャッシュを除外
        "--glob=!database/*",
      },
      file_ignore_patterns = {
        "%.lock",
        "%.bin",
        "%.dll",
        "%.exe",
        "%.so",
        "%.dylib",
        "%.class",
        "%.jar",
      },
      extensions = {
        fzf = {
          fuzzy = true, -- Fuzzy検索を有効化
          override_generic_sorter = true, -- Telescopeのデフォルトソータを置き換え
          override_file_sorter = true, -- ファイルソータを置き換え
          case_mode = "smart_case", -- ケースを賢く判断
        },
      },
    },
  },
  config = function()
    require("telescope").setup({
      defaults = {
        layout_strategy = "horizontal",
        layout_config = {
          prompt_position = "top", -- 検索バーを上部に配置
        },
        sorting_strategy = "ascending",
      },
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
      },
    })
    require("telescope").load_extension("fzf")
  end,
}
