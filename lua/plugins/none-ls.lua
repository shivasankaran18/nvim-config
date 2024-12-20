return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,

        null_ls.builtins.formatting.prettier.with({
          filetypes = { "javascript", "typescript", "css", "html", "json", "yaml", "markdown", "vue" },
        }),
      },
    })

    vim.keymap.set("n", "<leader>p", vim.lsp.buf.format, {})
  end,
}

