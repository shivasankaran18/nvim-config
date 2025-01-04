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
      filesystem = {
        -- Hide specific files/folders (you can add more as needed)
          follow_current_file = true,
	filtered_items ={  -- If you want to hide hidden items by default
          hide_dotfiles = false,  -- Hide dotfiles (files starting with a dot)
          hide_gitignored = false,  -- Hide git-ignored files
        
        },
      },
    })

       

    
    -- Keymap to toggle NeoTree
    vim.keymap.set('n', 'w', ':Neotree toggle<CR>', { noremap = true, silent = true })
  end
}

