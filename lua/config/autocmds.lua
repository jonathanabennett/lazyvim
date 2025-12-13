-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Add this to a startup file (e.g., init.lua or a file sourced early)
vim.api.nvim_create_autocmd("FileType", {
  pattern = "org",
  callback = function()
    -- Explicitly remove common list continuation markers from the comments option
    -- This should prevent Vim from copying the '*' to the next line.
    vim.opt_local.comments = "s1:--,mb:-,s1:#,ex:#,b:#,b:%,b:>"

    -- You can also try:
    -- vim.opt_local.comments = ''
    -- to completely disable all comment/list continuation, then add back what you need.
  end,
})
