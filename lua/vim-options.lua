--im.cmd("set number")
--#region
local o=vim.o
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")


vim.keymap.set("n", "<leader>r", [[:%s/]], { noremap = true, silent = false })
o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2
o.scrolloff = 8
o.sidescrolloff = 8

vim.opt.fillchars = { eob = " " }
o.ignorecase = true
o.smartcase = true
o.mouse = "a"

o.number = true

o.signcolumn = "yes"
o.splitbelow = true
o.splitright = true
o.termguicolors = true
o.timeoutlen = 400
o.undofile = true
o.cursorline = true

