local map = vim.keymap.set
local fn = vim.fn

local lazypath = fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require('globals')
require("lazy").setup("plugins")
require('tree')

vim.opt_global.completeopt = { "menuone", "noinsert", "noselect" }
-- vim.cmd("colorscheme tokyonight-night")
