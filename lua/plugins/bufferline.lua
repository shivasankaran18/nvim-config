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
        -- Key mappings for navigation
        vim.keymap.set("n", "k", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "j", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
	vim.keymap.set("n", "x", ":bdelete<CR>", { noremap = true, silent = true })
    end
}

