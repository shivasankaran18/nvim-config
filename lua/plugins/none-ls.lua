-- return {
--   "nvimtools/none-ls.nvim",
--   config = function()
--     local null_ls = require("null-ls")
--     null_ls.setup({
--       sources = {
--         null_ls.builtins.formatting.stylua,
--
--         null_ls.builtins.formatting.prettier.with({
--           extra_args = { "--config", vim.fn.expand("~/.config/nvim/.prettierrc") },
--           filetypes = { "javascript", "typescript", "css", "html", "json", "yaml", "markdown", "vue","lua","java","prisma" },
--         }),
--       },
--     })
--     vim.keymap.set("n", "p", function()
--   vim.lsp.buf.format({ name = "null-ls" })
-- end, {})
--
--   end,
-- }
--
return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier.with({
          -- Explicitly pass the indentation settings (optional, since Prettier will read them from .prettierrc)
          args = { "--stdin-filepath", "$FILENAME", "--tab-width", "3", "--use-tabs", "false" },
        }),
        null_ls.builtins.diagnostics.erb_lint,
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.formatting.rubocop,
        null_ls.builtins.formatting.black,
      },
    })

    vim.keymap.set("n", "p", vim.lsp.buf.format, {})
  end,
}

