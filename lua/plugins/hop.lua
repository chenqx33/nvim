-- ~/.config/nvim/lua/plugins/hop.lua
return {
  "smoka7/hop.nvim",
  version = "*",
  opts = {}, -- 使用默认配置
  keys = {
    {
      "s",
      function()
        require("hop").hint_char2()
      end,
      mode = "n",
      desc = "Hop to 2-char",
    },
    {
      "<leader>j",
      function()
        require("hop").hint_lines()
      end,
      mode = "n",
      desc = "Hop to line",
    },
    {
      "<leader>hw",
      function()
        require("hop").hint_words()
      end,
      mode = "n",
      desc = "Hop to word",
    },
  },
  config = function(_, opts)
    require("hop").setup(opts)
  end,
}
