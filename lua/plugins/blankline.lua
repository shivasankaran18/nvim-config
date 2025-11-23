return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      char = "│", -- Character used for indentation guides
    },
    scope = {
      enabled = true, -- Enables current scope highlighting
      show_start = true, -- Highlights the start of the scope
      show_end = false, -- Optionally highlight the end of the scope
    },
    -- exclude = {
    --   filetypes = { "help", "startify", "dashboard", "packer", "neogitstatus" }, -- Excluded filetypes
    --   buftypes = { "terminal", "nofile" }, -- Excluded buffer types
    -- },
  },
}

