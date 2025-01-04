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
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.erb_lint,
        null_ls.builtins.diagnostics.rubocop,
        null_ls.builtins.formatting.rubocop,
      },
    })

    vim.keymap.set("n", "p", vim.lsp.buf.format, {})
  end,
}

