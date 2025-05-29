return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      return vim.tbl_deep_extend("force", opts, {
        ensure_installed = { "java" },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<A-w>",      -- 初始化选择
            node_incremental = "<A-w>",    -- 扩大选择
          },
        },
      })
    end,
  },
}
