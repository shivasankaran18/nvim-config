return {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
        require("tokyonight").setup({
            style = "night", -- Options: "storm", "moon", "night", "day"
            transparent = false, -- NVChad typically uses non-transparent backgrounds
            terminal_colors = true, -- Sync terminal colors with the theme
            styles = {
                comments = { italic = true }, -- Italicized comments
                keywords = {}, -- Default style for keywords
                functions = {}, -- Default style for functions
                variables = {}, -- Default style for variables
            },
            sidebars = { "qf", "help", "terminal", "packer", "NvimTree" }, -- Include NVChad panels
            lualine_bold = true, -- Bold separators in Lualine
            on_colors = function(colors)
                -- Customize colors for NVChad-like aesthetics
                colors.bg = "#1e1e2e" -- Match NVChad dark background
                colors.bg_highlight = "#2a2a37" -- Slightly lighter highlight background
                colors.comment = "#6f7486" -- Dimmed comments
                colors.line_number = "#3b4261" -- Dimmed line number color
                colors.vert_split = "#2a2a37" -- Split line color
                colors.fg = "#c0caf5" -- Foreground text color
            end,
            on_highlights = function(hl, colors)
                -- Customize highlights to match NVChad
                hl.LineNr = { fg = colors.line_number }
                hl.CursorLine = { bg = colors.bg_highlight }
                hl.Comment = { fg = colors.comment, italic = true }
                hl.Normal = { bg = colors.bg, fg = colors.fg }
                hl.VertSplit = { fg = colors.vert_split } -- Split line color
                hl.NvimTreeNormal = { bg = colors.bg, fg = colors.fg } -- File tree background
                hl.NvimTreeVertSplit = { fg = colors.vert_split } -- File tree separator
            end,
        })

        -- Apply the colorscheme
        vim.cmd.colorscheme("tokyonight")
    end,
}

