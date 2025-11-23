return {
  'numToStr/Comment.nvim',
  config = function()
    require('Comment').setup()
    -- Map single "/" in visual mode to toggle comment for selection
    vim.keymap.set("v", "/", "<Plug>(comment_toggle_linewise_visual)", { silent = true })
  end
}

