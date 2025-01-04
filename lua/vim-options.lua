-- Set indentation options
local o = vim.o
local opt = vim.opt

o.expandtab = true       -- Use spaces instead of tabs
o.shiftwidth = 2         -- Number of spaces for auto-indentation
o.tabstop = 2            -- Number of spaces a tab counts for
o.softtabstop = 2        -- Number of spaces a <Tab> counts for while editing
o.smartindent = true     -- Automatically indent new lines
o.autoindent = true      -- Copy indent from the current line when starting a new line


--o.expandtab = true      -- Use spaces instead of tabs
-- Enable other useful options
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.fillchars = { eob = " " } -- Remove tilde from empty lines
o.ignorecase = true
o.smartcase = true
o.mouse = "a"

o.number = true          -- Show line numbers
o.signcolumn = "yes"     -- Show sign column always
o.splitbelow = true      -- Horizontal splits below current window
o.splitright = true      -- Vertical splits to the right of current window
o.termguicolors = true   -- Enable true color support
o.timeoutlen = 400       -- Faster key mappings
o.undofile = true        -- Persistent undo
o.cursorline = true      -- Highlight the current line



