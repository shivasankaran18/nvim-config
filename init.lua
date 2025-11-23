vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.api.nvim_set_keymap('n', '/', '/\\v', { noremap = true, silent = true }) -- Start search with /\v for regular expression mode
vim.api.nvim_set_keymap('n', '<Esc>', ':noh<CR><Esc>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<CR>', 'n', { noremap = true, silent = true }) -- Jump to the next search result

vim.api.nvim_set_keymap('n', 'n', 'nzzzv', { noremap = true })               -- Center cursor after next match
vim.api.nvim_set_keymap('n', 'N', 'Nzzzv', { noremap = true })               -- Center cursor after previous match
vim.api.nvim_set_keymap('n', 'r', '<nop>', { noremap = true, silent = true })
vim.keymap.set("n", "r", [[:%s/]], { noremap = true, silent = false })

vim.keymap.set("n", "cc", function()
  local cur_pos = vim.api.nvim_win_get_cursor(0)
  vim.cmd('silent normal! ggVGy')
  vim.api.nvim_win_set_cursor(0, cur_pos)
  vim.notify("Entire file copied to clipboard!", vim.log.levels.INFO)
end, { noremap = true, silent = true })

vim.keymap.set("n", "a", "0", { noremap = true, silent = true }) -- Go to start of line (first non-blank)
vim.keymap.set("n", "s", "$", { noremap = true, silent = true }) -- Go to end of line


-- Copy entire file to system clipboard
vim.keymap.set("n", "c", ":%y+<CR>", { noremap = true, silent = true, desc = "Copy entire file" })

-- Delete entire file content
vim.keymap.set("n", "z", ":%d<CR>", { noremap = true, silent = true, desc = "Delete entire file" })

vim.keymap.set("n", "q", "0", { noremap = true, silent = true })
vim.keymap.set("n", "s", "$", { noremap = true, silent = true })











vim.keymap.set('n', 'V', ':vsplit<CR>', { noremap = true, silent = true }) -- Vertical split
vim.keymap.set('n', 'H', ':split<CR>', { noremap = true, silent = true })  -- Horizontal split

local o = vim.o
local opt = vim.opt

o.expandtab = true   -- Use spaces instead of tabs
o.shiftwidth = 3     -- Number of spaces for auto-indentation
o.tabstop = 3        -- Number of spaces a tab counts for
o.softtabstop = 3    -- Number of spaces a <Tab> counts for while editing
o.smartindent = true -- Automatically indent new lines
o.autoindent = true  -- Copy indent from the current line when starting a new line


vim.opt.fillchars:append { eob = " " }




vim.opt.clipboard = "unnamedplus"
vim.keymap.set("n", "<leader>r", [[:%s/]], { noremap = true, silent = false })
vim.opt.number = true



-- Make sure the delete operations (d, dd, etc.) don't use the clipboard
vim.keymap.set('n', 'd', '"_d')   -- Use register "_" to discard the text in normal mode
vim.keymap.set('v', 'd', '"_d')   -- Use register "_" to discard the text in visual mode
vim.keymap.set('n', 'dd', '"_dd') -- Same for "dd" in normal mode
vim.keymap.set('v', 'd', '"_d')   -- Same for "d" in visual mode


-- Ensure c and cc cut the text (delete and copy to clipboard)
--vim.keymap.set('n', 'c', '"+c')    -- Copy to clipboard and cut
vim.keymap.set('v', 'c', '"+c')   -- Copy to clipboard and cut in visual mode
vim.keymap.set('n', 'cc', '"+cc') -- Same for "cc" in normal mode



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
local opts = {}

require("lazy").setup("plugins")
