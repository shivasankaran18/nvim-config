return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- NeoTree setup
    require("neo-tree").setup({
      -- Set the width of the NeoTree file explorer
      window = {
        width = 25,  -- Set the width to 30 columns, you can adjust this value
        position = "left",  -- Position it on the left side of the window
      },
    })
    
    -- Keymap to toggle NeoTree
    vim.keymap.set('n', '<leader>w', ':Neotree toggle<CR>', { noremap = true, silent = true })
  end
}

