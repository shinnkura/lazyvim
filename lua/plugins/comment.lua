return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup({
      post_hook = function()
        vim.cmd("write")
      end,
    })
  end,
}
