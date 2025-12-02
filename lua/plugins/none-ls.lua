return {
   "nvimtools/none-ls.nvim",
   config = function()
      local none_ls=require("null-ls")
      none_ls.setup({
         sources = {
            none_ls.builtins.formatting.stylua,
            none_ls.builtins.formatting.prettier.with({
               -- Explicitly pass the indentation settings
               args = { "--stdin-filepath", "$FILENAME", "--tab-width", "3", "--use-tabs", "false" },
            }),
            none_ls.builtins.diagnostics.erb_lint,
            none_ls.builtins.diagnostics.rubocop,
            none_ls.builtins.formatting.rubocop,
            none_ls.builtins.formatting.black,
            none_ls.builtins.formatting.goimports,
            none_ls.builtins.formatting.gofmt
         },
      })

      vim.keymap.set("n", "p", vim.lsp.buf.format, {})
   end,
}
