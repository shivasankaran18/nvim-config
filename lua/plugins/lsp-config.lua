return {
   {
      "williamboman/mason.nvim",
      config = function()
         require('mason').setup()
      end,
   },
   {
      "williamboman/mason-lspconfig.nvim",
      config = function()
         require('mason-lspconfig').setup({
            ensure_installed = {
               "lua_ls",
               "ts_ls",
               "cssls",
               "prismals",
               "html",
               "jdtls",
               "tailwindcss",
               "harper_ls",
               "dockerls",
               "graphql",
               "jsonls",
               "yamlls",
               "pyright",
               "lemminx",
               "gopls",

            },
         })
      end,
   },
   {
      "neovim/nvim-lspconfig",
      config = function()
         local lspconfig = require('lspconfig')

         -- LSP servers
         lspconfig.lua_ls.setup({})
         lspconfig.ts_ls.setup({})
         lspconfig.cssls.setup({})
         lspconfig.html.setup({})
         lspconfig.jdtls.setup({})
         lspconfig.tailwindcss.setup({})
         lspconfig.prismals.setup({})
         lspconfig.harper_ls.setup({})
         lspconfig.dockerls.setup({})
         lspconfig.graphql.setup({})
         lspconfig.jsonls.setup({})
         lspconfig.yamlls.setup({})
         lspconfig.pyright.setup({})
         lspconfig.lemminx.setup({})
         lspconfig.gopls.setup({})

         -- Keymaps for LSP
         vim.keymap.set('n', 'l', vim.lsp.buf.hover, { desc = "Show Hover Info" })
         vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to Definition" })
         vim.keymap.set({ 'n', 'v' }, 't', vim.lsp.buf.code_action, { desc = "Code Action" })

         -- Diagnostic keymaps
         vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to Previous Diagnostic" })
         vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to Next Diagnostic" })
         vim.keymap.set('n', 'a', vim.diagnostic.open_float, { desc = "Open Diagnostic Float" })

         -- Configure diagnostics to show squiggly lines
         vim.diagnostic.config({
            virtual_text = false, -- Disable virtual text
            signs = true,
            underline = true, -- Enable underlining errors
            update_in_insert = false,
            float = {
               border = "rounded",
               source = "always",
            },
         })

         -- Set diagnostic signs
         local signs = { Error = "✘", Warn = "▲", Hint = "⚑", Info = "●" }
         for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
         end
      end,
   },
}
