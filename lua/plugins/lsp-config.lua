return{
  { "williamboman/mason.nvim",
    config=function()
      require('mason').setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config=function()
      require('mason-lspconfig').setup({
        ensure_installed={
          "lua_ls",     
          "ts_ls",     
          "cssls",        
          "html",       
          "jdtls",  
          "tailwindcss",  


        }
      })
    end
  },

  {
  
    'neovim/nvim-lspconfig',
    
    config=function()
      local lspconfig=require('lspconfig')
      lspconfig.lua_ls.setup{}
      lspconfig.ts_ls.setup{}
      lspconfig.cssls.setup{}
      lspconfig.html.setup{}
      lspconfig.jdtls.setup{}
      lspconfig.tailwindcss.setup{}
      vim.keymap.set('n','L',vim.lsp.buf.hover,{})
      vim.keymap.set('n','gd',vim.lsp.buf.definition,{})
      vim.keymap.set({'n','v'},'<leader>r',vim.lsp.buf.code_action,{})



    end
      


  }

}
