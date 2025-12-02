return {
   "akinsho/bufferline.nvim",
   dependencies = { "nvim-tree/nvim-web-devicons" },
   config = function()
      require("bufferline").setup({
         options = {
            separator_style = "slant", -- Choose a separator style
            show_close_icon = false,
            show_buffer_close_icons = true,
            diagnostics = "nvim_lsp", -- Show LSP diagnostics
         },
      })

      local hl = vim.api.nvim_set_hl
      hl(0, "BufferLineFill", { bg = "NONE" })
      hl(0, "BufferLineBackground", { bg = "NONE" })
      hl(0, "BufferLineTab", { bg = "NONE" })
      hl(0, "BufferLineTabClose", { bg = "NONE" })
      hl(0, "BufferLineCloseButton", { bg = "NONE" })
      hl(0, "BufferLineSeparator", { fg = "#3b3b3b", bg = "NONE" })
      hl(0, "BufferLineSeparatorSelected", { fg = "#3b3b3b", bg = "NONE" })
      hl(0, "BufferLineSeparatorVisible", { fg = "#3b3b3b", bg = "NONE" })
      hl(0, "BufferLineModified", { bg = "NONE" })
      hl(0, "TabLineFill", { bg = "NONE" })
      hl(0, "TabLine", { bg = "NONE" })
      hl(0, "TabLineSel", { bg = "NONE" })
      hl(0, "StatusLine", { bg = "NONE" })
      hl(0, "StatusLineNC", { bg = "NONE" })

      -- Key mappings for navigation
      vim.keymap.set("n", "k", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "j", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
      vim.keymap.set("n", "x", ":bdelete<CR>", { noremap = true, silent = true })
   end
}
