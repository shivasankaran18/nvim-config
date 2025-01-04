return{
	
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
	vim.keymap.set('v', '<C-_>', '<Plug>(comment_toggle_linewise_visual)', { noremap = true, silent = true })
   end




}
