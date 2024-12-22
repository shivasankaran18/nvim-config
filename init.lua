vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- Search configuration and key mappings
vim.api.nvim_set_keymap('n', '/', '/\\v', { noremap = true, silent = true }) -- Start search with /\v for regular expression mode

-- Jump to the next search result with Enter
vim.api.nvim_set_keymap('n', '<CR>', 'n', { noremap = true, silent = true }) -- Jump to the next search result

-- Center cursor after jumping to next search result with n and N
vim.api.nvim_set_keymap('n', 'n', 'nzzzv', { noremap = true }) -- Center cursor after next match
vim.api.nvim_set_keymap('n', 'N', 'Nzzzv', { noremap = true }) -- Center cursor after previous match


vim.g.mapleader=" "







vim.opt.clipboard = "unnamedplus"
vim.keymap.set("n", "<leader>r", [[:%s/]], { noremap = true, silent = false })
vim.opt.number = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
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
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

local opts={}

require("lazy").setup("plugins")



