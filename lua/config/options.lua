-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.expandtab = true
  end,
})
-- Move line up/down in Normal mode
vim.keymap.set("n", "<C-S-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("n", "<C-S-j>", ":m .+1<CR>==", { desc = "Move line down" })

-- Move selected lines up/down in Visual mode
vim.keymap.set("v", "<C-S-k>", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })
vim.keymap.set("v", "<C-S-j>", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
