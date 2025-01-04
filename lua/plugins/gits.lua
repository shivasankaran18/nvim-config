return {


	{
		"tpope/vim-fugitive",
		config = function()
			vim.keymap.set("n", "e", ":Git<Space>", {})
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				current_line_blame = true, -- Show blame for the current line
				current_line_blame_opts = {
					virt_text = true,
					virt_text_pos = "eol", -- Place blame at the end of the line
					delay = 500,
					ignore_whitespace = false,
				},
				current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
				sign_priority = 6, -- Priority of git signs
				update_debounce = 100,
				preview_config = {
					border = "rounded",
				},
			})

			-- Key mappings for GitSigns
			vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
			vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})

			-- Define highlights
			vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#A6E22E" }) -- Green for additions
			vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#FD971F" }) -- Yellow for changes
			vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#F92672" }) -- Red for deletions

			vim.api.nvim_set_hl(0, "GitSignsAddNr", { link = "GitSignsAdd" })
			vim.api.nvim_set_hl(0, "GitSignsChangeNr", { link = "GitSignsChange" })
			vim.api.nvim_set_hl(0, "GitSignsDeleteNr", { link = "GitSignsDelete" })

			vim.api.nvim_set_hl(0, "GitSignsAddLn", { link = "GitSignsAdd" })
			vim.api.nvim_set_hl(0, "GitSignsChangeLn", { link = "GitSignsChange" })
			vim.api.nvim_set_hl(0, "GitSignsDeleteLn", { link = "GitSignsDelete" })

			vim.api.nvim_set_hl(0, "GitSignsTopdelete", { link = "GitSignsDelete" })
			vim.api.nvim_set_hl(0, "GitSignsChangedelete", { link = "GitSignsChange" })
		end,
	},
}



