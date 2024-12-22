return {
{
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"elixir",
				"heex",
				"javascript",
				"html",
				"typescript",
				"java",
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },
		})

		-- Custom highlights for NVChad-like UI
		local set_hl = vim.api.nvim_set_hl
		local colors = {
			keyword = "#f7768e", -- Pink (keywords)
			function_name = "#82aaff", -- Blue (functions)
			variable = "#c0caf5", -- Light Blue (variables)
			string = "#9ece6a", -- Green (strings)
			comment = "#565f89", -- Gray (comments)
			type = "#bb9af7", -- Purple (types)
			operator = "#89ddff", -- Cyan (operators)
			number = "#ff9e64", -- Orange (numbers)
		}

		-- Apply NVChad-like highlights
		set_hl(0, "@keyword", { fg = colors.keyword, bold = true })
		set_hl(0, "@function", { fg = colors.function_name, italic = true })
		set_hl(0, "@variable", { fg = colors.variable })
		set_hl(0, "@string", { fg = colors.string })
		set_hl(0, "@comment", { fg = colors.comment, italic = true })
		set_hl(0, "@type", { fg = colors.type, bold = true })
		set_hl(0, "@operator", { fg = colors.operator })
		set_hl(0, "@number", { fg = colors.number })
	end,

	},
	{
        "kevinhwang91/nvim-hlslens",
        config = function()
            require("hlslens").setup()
        end
    },
}
