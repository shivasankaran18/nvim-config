return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      telescope.setup({
        defaults = {
          -- Ensure Telescope uses rg for live grep if available
          vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case"
          },
        },
      })

      -- Load UI select extension if present
      pcall(telescope.load_extension, "ui-select")

      -- Keymaps
      vim.keymap.set('n', 'f', builtin.find_files, { desc = "Find Files" })
      vim.keymap.set('n', 'D', builtin.live_grep, { desc = "Live Grep" })
    end,
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
  },
}

