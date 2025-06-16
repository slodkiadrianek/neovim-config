-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.guicursor = {
  "n-v-c:block", -- block cursor in normal/visual/command modes
  "i-ci-ve:ver35", -- vertical bar (35% width) in insert and related modes
  "r-cr:hor20", -- horizontal bar in replace mode
  "o:hor50", -- wide horizontal bar in operator-pending mode
}
