return {
   {
      "windwp/nvim-autopairs",
      event = "InsertEnter",
      config = function()
         require("nvim-autopairs").setup({
            check_ts = true,
            disable_filetype = { "TelescopePrompt", "vim" },
            fast_wrap = {
               map = "<M-e>", -- Wrap selection with brackets/quotes
               chars = { "{", "[", "(", '"', "'" },
               pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
               offset = 0, -- Offset from pattern match
               end_key = "$",
               keys = "qwertyuiopzxcvbnmasdfghjkl",
               check_comma = true,
               highlight = "Search",
               highlight_grey = "Comment",
            },
         })

         local cmp_autopairs = require("nvim-autopairs.completion.cmp")
         local cmp = require("cmp")
         cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
      end,

   },
   {
      "windwp/nvim-ts-autotag",
      event = "InsertEnter",
      config = function()
         require("nvim-ts-autotag").setup({
            opts = {
               -- Defaults
               enable_close = true,            -- Auto close tags
               enable_rename = true,           -- Auto rename pairs of tags
               enable_close_on_slash = false,  -- Auto close on trailing </
            },
            -- Per filetype overrides
            per_filetype = {
               ["html"] = {
                  enable_close = false,   -- Disable auto close tags for HTML
               },
            },
         })
      end,
   },

}


