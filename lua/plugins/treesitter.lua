return {
   "nvim-treesitter/nvim-treesitter",
   build = ":TSUpdate",
   config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
         ensure_installed = {
            "c", "lua", "vim", "vimdoc", "query", "elixir", "heex",
            "javascript", "dockerfile", "gitignore", "prisma", "yaml",
            "html", "typescript", "java", "python", "json5", "markdown", "bash","go","gomod","gosum","gowork"
         },
         highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
         },
      })

      -- Custom highlights for GitHub Dark theme
      local set_hl = vim.api.nvim_set_hl
      local colors = {
         keyword = "#ff7b72",       -- Red for keywords
         function_name = "#79c0ff", -- Blue for functions
         variable = "#c9d1d9",      -- Light gray for variables
         string = "#a5d6ff",        -- Light Blue for strings
         comment = "#6e7681",       -- Gray for comments
         type = "#d2a8ff",          -- Purple for types
         operator = "#ffab70",      -- Orange for operators
         number = "#ffa657",        -- Orange for numbers
      }

      -- Apply highlights
      set_hl(0, "@keyword", { fg = colors.keyword, bold = true })
      set_hl(0, "@function", { fg = colors.function_name, italic = true })
      set_hl(0, "@variable", { fg = colors.variable })
      set_hl(0, "@string", { fg = colors.string })
      set_hl(0, "@comment", { fg = colors.comment, italic = true })
      set_hl(0, "@type", { fg = colors.type, bold = true })
      set_hl(0, "@operator", { fg = colors.operator })
      set_hl(0, "@number", { fg = colors.number })
   end,
}
