require('mason').setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
    },
  },
})

require("conform").setup({
  formatters_by_ft = {
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    markdown = { "prettierd" },
  },
})

vim.lsp.config('dartls', {
  cmd = { "dart", "language-server", "--protocol=lsp" },
})

vim.lsp.config('ltex', {
  settings = {
    ltex = {
      enabled = {
        "bibtex",
        "gitcommit",
        "org",
        "tex",
        "restructuredtext",
        "rsweave",
        "latex",
        "quarto",
        "rmd",
        "context",
        "mail",
        "plaintext",
        -- "markdown"
      },
    }
  }
})

-- require('lspconfig').jdtls.setup {
--   settings = {
--     ltex = {
--       enabled = { "bibtex", "gitcommit", "org", "tex", "restructuredtext", "rsweave", "latex", "quarto", "rmd", "context", "mail", "plaintext" }
--     }
--   }
-- }

vim.lsp.config('nil_ls', {
  settings = {
    ['nil'] = {
      formatting = {
        command = { "nixpkgs-fmt" }
      }
    }
  }
})

require('mason-lspconfig').setup({
  ensure_installed = {}
})
