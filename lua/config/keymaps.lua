-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del("n", "<space>n")

vim.keymap.set("n", "<space>pn", "<cmd>NoicePick<cr>", { desc = "Notification History" })
