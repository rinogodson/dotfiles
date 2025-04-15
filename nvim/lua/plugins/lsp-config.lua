return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls", "gopls", "pyright", "cssls" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      local lspconfig = require("lspconfig")

      -- Setup each LSP
      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.gopls.setup({})
      lspconfig.pyright.setup({})
      lspconfig.cssls.setup({})

      -- Keymaps
      vim.keymap.set("n", "<space>ci", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, {})
    end,
  },
}

